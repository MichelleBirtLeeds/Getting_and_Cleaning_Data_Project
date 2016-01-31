Variables included in tidiedHarDataset
======================================
There are 68 variables in tidiedHarDataset.

As an explanation for "mean.(CENTER OF NAME).meanOfTrial.(XYZ)" format: (Variables 3-68)
----------------------------------------------------------------------------------------
The subjects were recorded while performing the activities mentioned in variable 2. Each trial lasted a few seconds, and the accelerometer and gyroscope recorded measurements at a rate of 50Hz (50 times a second). The gyroscope measured angular velocity, and the accelerometer measured linear acceleration (referred to as "Acceleration" in the variable names). Jerk (rate of change of acceleration) was calculated from the raw data.

Some names contain the word "Gravity"; this indicates that the Gravity component of the accelerometer reading was isolated, and is reported in that variable.

Some measures are reported in the X, Y, or Z, domain; this is reflected in the X, Y, or Z at the end of the variable name. Others report total magnitude, and the XYZ marker is not present at the end of the name but "Magnitude" is indicated within the variable name.

Some variables contain the phrase "timeDomain"; this indicates the measurement is analyzed with respect to time.  A Fast Fourier Transformation was applied to some signals; these measures include the component "freqDomain", and the measurement is analyzed with respect to frequency.

The mean and standard deviation of each of these measurements was reported for each trial, explaining the "meanOfTrial" or "stdOfTrial" segements of the variable name. 

Each subject performed each activity multiple times. For this data set, a mean of all trials, for each of the measures, is reported; thus each name begins with the component "mean.".

The values reported for these measures are are normalized for purposes of compatibility and comparability, and are bounded within [-1,1].


1. SubjectId  
    Thirty subjects are included in this dataset.

2. activity  
    There are six activities which each subject performed a number of times.  
    These activities are:  
       *walking  
       *walking upstairs  
       *walking downstairs  
       *sitting  
       *standing  
       *laying  
                                        
3. mean.timeDomain.BodyAcceleration.meanOfTrial.X  
    *derived from tBodyAcc-mean()-X in HAR dataset
                 
4. mean.timeDomain.BodyAcceleration.meanOfTrial.Y  
    *derived from tBodyAcc-mean()-Y in HAR dataset
                  
5. mean.timeDomain.BodyAcceleration.meanOfTrial.Z  
    *derived from tBodyAcc-mean()-Z in HAR dataset
                  
6. mean.timeDomain.BodyAcceleration.stdOfTrial.X    
    *derived from tBodyAcc-std()-X in HAR dataset
                  
7. mean.timeDomain.BodyAcceleration.stdOfTrial.Y  
    *derived from tBodyAcc-std()-Y in HAR dataset
                   
8. mean.timeDomain.BodyAcceleration.stdOfTrial.Z  
    *derived from tBodyAcc-std()-Z in HAR dataset
                   
9. mean.timeDomain.GravityAcceleration.meanOfTrial.X  
    *derived from tGravityAcc-mean()-X in HAR dataset
               
10. mean.timeDomain.GravityAcceleration.meanOfTrial.Y  
    *derived from tGravityAcc-mean()-Y in HAR dataset
               
11. mean.timeDomain.GravityAcceleration.meanOfTrial.Z  
    *derived from tGravityAcc-mean()-Z in HAR dataset
               
12. mean.timeDomain.GravityAcceleration.stdOfTrial.X  
    *derived from tGravityAcc-std()-X in HAR dataset
                
13. mean.timeDomain.GravityAcceleration.stdOfTrial.Y  
    *derived from tGravityAcc-std()-Y in HAR dataset
                
14. mean.timeDomain.GravityAcceleration.stdOfTrial.Z  
    *derived from tGravityAcc-std()-Z in HAR dataset 
               
15. mean.timeDomain.BodyAccelerationJerk.meanOfTrial.X  
    *derived from tBodyAccJerk-mean()-X in HAR dataset
              
16. mean.timeDomain.BodyAccelerationJerk.meanOfTrial.Y  
    *derived from tBodyAccJerk-mean()-Y in HAR dataset
              
17. mean.timeDomain.BodyAccelerationJerk.meanOfTrial.Z  
    *derived from tBodyAccJerk-mean()-Z in HAR dataset
              
18. mean.timeDomain.BodyAccelerationJerk.stdOfTrial.X  
    *derived from tBodyAccJerk-std()-X in HAR dataset
               
19. mean.timeDomain.BodyAccelerationJerk.stdOfTrial.Y  
    *derived from tBodyAccJerk-std()-Y in HAR dataset
               
20. mean.timeDomain.BodyAccelerationJerk.stdOfTrial.Z  
    *derived from tBodyAccJerk-std()-Z in HAR dataset
               
21. mean.timeDomain.BodyAngularVelocity.meanOfTrial.X  
    *derived from tBodyGyro-mean()-X in HAR dataset
               
22. mean.timeDomain.BodyAngularVelocity.meanOfTrial.Y  
    *derived from tBodyGyro-mean()-Y in HAR dataset
               
23. mean.timeDomain.BodyAngularVelocity.meanOfTrial.Z  
    *derived from tBodyGyro-mean()-Z in HAR dataset
               
24. mean.timeDomain.BodyAngularVelocity.stdOfTrial.X  
    *derived from tBodyGyro-std()-X in HAR dataset
                
25. mean.timeDomain.BodyAngularVelocity.stdOfTrial.Y  
    *derived from tBodyGyro-std()-Y in HAR dataset
                
26. mean.timeDomain.BodyAngularVelocity.stdOfTrial.Z  
    *derived from tBodyGyro-std()-Z in HAR dataset
                
27. mean.timeDomain.BodyAngularVelocityJerk.meanOfTrial.X  
    *derived from tBodyGyroJerk-mean()-X in HAR dataset
           
28. mean.timeDomain.BodyAngularVelocityJerk.meanOfTrial.Y  
    *derived from tBodyGyroJerk-mean()-Y in HAR dataset
           
29. mean.timeDomain.BodyAngularVelocityJerk.meanOfTrial.Z  
    *derived from tBodyGyroJerk-mean()-Z in HAR dataset
           
30. mean.timeDomain.BodyAngularVelocityJerk.stdOfTrial.X  
    *derived from tBodyGyroJerk-std()-X in HAR dataset
            
31. mean.timeDomain.BodyAngularVelocityJerk.stdOfTrial.Y  
    *derived from tBodyGyroJerk-std()-Y in HAR dataset
            
32. mean.timeDomain.BodyAngularVelocityJerk.stdOfTrial.Z  
    *derived from tBodyGyroJerk-std()-Z in HAR dataset
            
33. mean.timeDomain.BodyAccelerationMagnitude.meanOfTrial  
    *derived from tBodyAccMag-mean() in HAR dataset
           
34. mean.timeDomain.BodyAccelerationMagnitude.stdOfTrial  
    *derived from tBodyAccMag-std() in HAR dataset
            
35. mean.timeDomain.GravityAccelerationMagnitude.meanOfTrial  
    *derived from tGravityAccMag-mean() in HAR dataset
        
36. mean.timeDomain.GravityAccelerationMagnitude.stdOfTrial  
    *derived from tGravityAccMag-std() in HAR dataset 
        
37. mean.timeDomain.BodyAccelerationJerkMagnitude.meanOfTrial  
    *derived from tBodyAccJerkMag-mean() in HAR dataset  
     
38. mean.timeDomain.BodyAccelerationJerkMagnitude.stdOfTrial  
    *derived from tBodyAccJerkMag-std() in HAR dataset   
     
39. mean.timeDomain.BodyAngularVelocityMagnitude.meanOfTrial  
    *derived from tBodyGyroMag-mean() in HAR dataset 
       
40. mean.timeDomain.BodyAngularVelocityMagnitude.stdOfTrial  
    *derived from tBodyGyroMag-std() in HAR dataset
        
41. mean.timeDomain.BodyAngularVelocityJerkMagnitude.meanOfTrial  
    *derived from tBodyGyroJerkMag-mean() in HAR dataset
    
42. mean.timeDomain.BodyAngularVelocityJerkMagnitude.stdOfTrial  
    *derived from tBodyGyroJerkMag-std() in HAR dataset
     
43. mean.freqDomain.BodyAcceleration.meanOfTrial.X  
    *derived from fBodyAcc-mean()-X in HAR dataset
                  
44. mean.freqDomain.BodyAcceleration.meanOfTrial.Y  
    *derived from fBodyAcc-mean()-Y in HAR dataset
                  
45. mean.freqDomain.BodyAcceleration.meanOfTrial.Z  
    *derived from fBodyAcc-mean()-Z in HAR dataset
                  
46. mean.freqDomain.BodyAcceleration.stdOfTrial.X  
    *derived from fBodyAcc-std()-X in HAR dataset
                   
47. mean.freqDomain.BodyAcceleration.stdOfTrial.Y  
    *derived from fBodyAcc-std()-Y in HAR dataset
                   
48. mean.freqDomain.BodyAcceleration.stdOfTrial.Z  
    *derived from fBodyAcc-std()-Z in HAR dataset
                   
49. mean.freqDomain.BodyAccelerationJerk.meanOfTrial.X  
    *derived from fBodyAccJerk-mean()-X in HAR dataset
              
50. mean.freqDomain.BodyAccelerationJerk.meanOfTrial.Y  
    *derived from fBodyAccJerk-mean()-Y in HAR dataset
              
51. mean.freqDomain.BodyAccelerationJerk.meanOfTrial.Z  
    *derived from fBodyAccJerk-mean()-Z in HAR dataset
              
52. mean.freqDomain.BodyAccelerationJerk.stdOfTrial.X  
    *derived from fBodyAccJerk-std()-X in HAR dataset
               
53. mean.freqDomain.BodyAccelerationJerk.stdOfTrial.Y  
    *derived from fBodyAccJerk-std()-Y in HAR dataset
               
54. mean.freqDomain.BodyAccelerationJerk.stdOfTrial.Z  
    *derived from fBodyAccJerk-std()-Z in HAR dataset
               
55. mean.freqDomain.BodyAngularVelocity.meanOfTrial.X  
    *derived from fBodyGyro-mean()-X in HAR dataset
               
56. mean.freqDomain.BodyAngularVelocity.meanOfTrial.Y  
    *derived from fBodyGyro-mean()-Y in HAR dataset
               
57. mean.freqDomain.BodyAngularVelocity.meanOfTrial.Z  
    *derived from fBodyGyro-mean()-Z in HAR dataset
               
58. mean.freqDomain.BodyAngularVelocity.stdOfTrial.X  
    *derived from fBodyGyro-std()-X in HAR dataset
                
59. mean.freqDomain.BodyAngularVelocity.stdOfTrial.Y  
    *derived from fBodyGyro-std()-Y in HAR dataset
                
60. mean.freqDomain.BodyAngularVelocity.stdOfTrial.Z  
    *derived from fBodyGyro-std()-Z in HAR dataset
                
61. mean.freqDomain.BodyAccelerationMagnitude.meanOfTrial  
    *derived from fBodyAccMag-mean() in HAR dataset
            
62. mean.freqDomain.BodyAccelerationMagnitude.stdOfTrial  
    *derived from fBodyAccMag-std() in HAR dataset
             
63. mean.freqDomain.BodyBodyAccelerationJerkMagnitude.meanOfTrial  
    *derived from fBodyBodyAccJerkMag-mean() in HAR dataset
   
64. mean.freqDomain.BodyBodyAccelerationJerkMagnitude.stdOfTrial  
    *derived from fBodyBodyAccJerkMag-std() in HAR dataset
     
65. mean.freqDomain.BodyBodyAngularVelocityMagnitude.meanOfTrial  
    *derived from ffBodyBodyGyroMag-mean() in HAR dataset
    
66. mean.freqDomain.BodyBodyAngularVelocityMagnitude.stdOfTrial  
    *derived from ffBodyBodyGyroMag-std() in HAR dataset
      
67. mean.freqDomain.BodyBodyAngularVelocityJerkMagnitude.meanOfTrial  
    *derived from fBodyBodyGyroJerkMag-mean() in HAR dataset

68. mean.freqDomain.BodyBodyAngularVelocityJerkMagnitude.stdOfTrial  
    *derived from fBodyBodyGyroJerkMag-std() in HAR dataset 
