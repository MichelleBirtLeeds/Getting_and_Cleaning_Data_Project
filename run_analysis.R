
#######################################################################################
#This file reads in the HAR dataset files, 
  #combines them into one dataset,
  #selects the mean and standard deviation measures from the original datasets
  #and creates a dataset of the means of those measures for each subject and activity,
    #as each subject performed each activity multiple times.

  #this file also improves variable and factor labeling of the dataset.

#It was last edited by Michelle Birt Leeds on January 28, 2016

#this script requires that the HAR dataset is present in the working directory.
#this script requires the dplyr library.
#######################################################################################

#Step 1: create one data set out of the training set and the test set.

  #starting with the training set:

    #read in the files
      subjectTrain<-read.table("./UCI HAR Dataset/train/subject_train.txt", sep="")
      xTrain<-read.table("./UCI HAR Dataset/train/X_train.txt", sep = "")
      yTrain<-read.table("./UCI HAR Dataset/train/Y_train.txt", sep = "")
    
    #we will want variable names for these data tables, 
      #and now is probably the easiest time to add them.
      features<-read.table("./UCI HAR Dataset/features.txt", sep="")
    
      colnames(xTrain)<-features$V2
      colnames(subjectTrain)<-"subjectId"
      colnames(yTrain)<-"activity"
    
    #merge the training set using cbind()
      trainingSet<-cbind(subjectTrain, yTrain, xTrain)

  #then make the test set:
    #read the files
      subjectTest<-read.table("./UCI HAR Dataset/test/subject_test.txt", sep="")
      xTest<-read.table("./UCI HAR Dataset/test/X_test.txt", sep = "")
      yTest<-read.table("./UCI HAR Dataset/test/Y_test.txt", sep = "") 

    #add the untidy labels
      colnames(xTest)<-features$V2
      colnames(subjectTest)<-"subjectId"
      colnames(yTest)<-"activity"

    #merge the test set
      testingSet<-cbind(subjectTest, yTest, xTest)

  #combine the training and test set.
    untidyDataSet<-rbind(trainingSet, testingSet)
    
  #remove items from the enviroment that are no longer needed.
    rm(subjectTrain, yTrain, xTrain, trainingSet, subjectTest, yTest, xTest, testingSet)

#Step 2:Extract the mean and standard deviation measures in the data set
    
  #I will extract variable that includes "mean()" or "std()"
  #I will also retain the activity and subjectId columns.
    meanAndStdVars<-grep("mean\\(\\)|std\\(\\)", colnames(untidyDataSet))
    selectedData<-untidyDataSet[,c(1:2,meanAndStdVars)]
    
  #remove items from the enviroment that are no longer needed.
    rm(meanAndStdVars)
  
  #NOTE:
    #I've elected not to include "meanFreq()" or "gravityMean" variables,
      #as they are somewhat different than mean()
    #Others might make a different choice about those variables.
    
    
#Step 3: Use descriptive labels on the data set
    
  #read in the activity labels.
    activityLabels<-read.table("./UCI HAR Dataset/activity_labels.txt", sep="")
    
    #the labels are capitalized with underscores; I'll convert it to camelCase.
      #I modified some code from this page to make this work
        #http://stackoverflow.com/a/11672967
      activityLabels$V2<-tolower(activityLabels$V2)
      activityLabels$V2<-gsub('\\_(\\w?)', '\\U\\1', activityLabels$V2, perl=T)
    #following this, I must convert the from character back to factor.
      activityLabels$V2<-as.factor(activityLabels$V2)
    
  #using match(), replace the values in selectedData$activity with activityLabels
    #for more information on how this works, please see: 
      #http://stackoverflow.com/questions/10002536/how-do-i-replace-numeric-codes-with-value-labels-from-a-lookup-table/10002695#10002695
    selectedData$activity<- activityLabels[,2][match(selectedData$activity, activityLabels[,1])]

#step 4: Appropriately label the data set with descriptive variable names. 
    #since I've already applied the labels, I will extract the untidy labels,
        #improve upon them,
        #then replace them with the descriptive labels.
      messyLabels<-colnames(selectedData)
    
    #replace "t" at beginning with "timeDomain"
      messyLabels<-sub("^t","timeDomain.", messyLabels)
    #replace f at beginning with "freqDomain"
      messyLabels<-sub("^f","freqDomain.", messyLabels)
    #replace dashes with periods
      messyLabels<-gsub("-",".", messyLabels)
    #remove parentheses
      messyLabels<-gsub("\\(\\)","", messyLabels)
    #"Acc" means acceleration
      messyLabels<-gsub("Acc","Acceleration", messyLabels)
    #"Gyro" means angular velocity
      messyLabels<-gsub("Gyro","AngularVelocity", messyLabels)
    #"Mag" means magnitude
      messyLabels<-gsub("Mag","Magnitude", messyLabels)
    #finally, the mean and std are for that particular trial.
        #we're going to find the mean of the means and stds in the next step.
        #prepare the labels to reflect this.
      messyLabels<-gsub(".mean",".meanOfTrial", messyLabels)
      betterLabels<-gsub(".std",".stdOfTrial", messyLabels)
    
    colnames(selectedData)<-betterLabels

    #NOTE:
    #betterLabels are longer than preferred, so I'm not satisfied with them.
      #I also wish I new what BodyBody...means, but I can't find documentation.
      #however, I don't know how to improve upon them at this time.
    
    #remove intermediate variables.
    rm(messyLabels, betterLabels)

#Step 5:create a second, independent tidy data set, 
  #with the average of each variable for each activity and each subject.
    
  #use dplyr
  library(dplyr)
    
  tidiedData<-selectedData %>% group_by(subjectId, activity) %>% summarise_each(funs(mean))
  
  #summarise_each preserves the names of the columns.
    #The colums are now means of the values named, and the name should indicate that.
    
    fixingNames<-colnames(tidiedData)
    
    for(i in 3:length(fixingNames))
      fixingNames[i]<-paste("mean.",fixingNames[i], sep = "")
    
    colnames(tidiedData)<-fixingNames
        rm(fixingNames)
    #NOTE:
      #I couldn't find a better way to do this that leaves out columns 1:2, 
      #Suggestions to improve this are welcome.

#Final step
    #make a dataset out of the dataframe tidiedData
    #I will make it a txt file
    write.table(tidiedData, file = "tidiedHarData.txt", row.name = FALSE)
    
######################################################################################

#FINAL NOTE:
    
    #In my opinion, the tidied Data should include a variable N
      #that indicates how many trials are summarized in the mean of retained values.
  