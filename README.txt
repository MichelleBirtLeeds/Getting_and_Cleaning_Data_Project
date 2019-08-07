==================================================================
Tidied HAR Dataset 

derived from the Human Activity Recognition Using Smartphones Dataset (HAR)
==================================================================
Summary Dataset prepared by Michelle Birt Leeds
michelle.birt.leeds@gmail.com

Original HAR dataset:
Reyes-Ortiz, Anguita, Ghio, Oneto.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================+


The Human Activity Recognition (HAR) dataset shows the results of experiments in which 30 volunteers performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) while wearing a smartphone that recorded acceleration and angular velocity.  Each subject performed each activity multiple times. For more information, please visit the SmartLab website: www.smartlab.ws

The run_analysis.R script reads in the HAR dataset files, combines them into one dataset, then selects the mean and standard deviation measures from the original datasets. It then creates a dataset of the means of those selected measures for each subject and activity, as each subject performed each activity multiple times; that dataset is saved in the tidiedHarData.txt file. This script also improves variable and factor labeling of the dataset and cleans the dataset according to tidy data principles.

The run_analysis.R script requires the dplyr library, and must be run in a working directory that contains the HAR dataset.

the HAR dataset is available at:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The dataset includes the following files:
======================================
- 'README.txt'

- 'CodeBook.md': Shows information about the variables included in the tidied dataset.

- 'run_analysis.R': The R script used to produce the Summary Dataset from the HAR data.

- 'tidiedHarData.txt': The tidied dataset produced form the HAR data, using run_analysis.R

Notes: 
======
-this README was last edited on January 30, 2016

-I used the following resource while working on this homework project:
   Getting and Cleaning Data: Course project help guide by Luis Sandino
   It is available at: https://drive.google.com/file/d/0B1r70tGT37UxYzhNQWdXS19CN1U/view
   Thank you, Luis!

-While forming the tidiedHarData.csv file, I elected not to include "meanFreq" or "gravityMean" variables, as they are somewhat different than the "mean" variable that was specified. Others might make a different choice about those variables.

-I improved readability of the variable names, but the variable names I created are longer than I preferred. I also wish I knew what "BodyBody..." means, but I can't find documentation.

-In my opinion, the tidied Data should include a variable N that indicates how many trials are summarized in the mean of retained values. The tidiedHarData.txt file does not currently contain such a variable.