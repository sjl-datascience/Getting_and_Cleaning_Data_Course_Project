---
title: "Codebook for Getting & Cleaning Data Course Project"
author: "SJL"
date: "Saturday, March 21, 2015"
output: html_document
---

####Summary
The purpose of this data collection is to satisfy the requirements of Coursera course "Getting and Cleaning Data". The data used in this project was collected from accelerometers from the Samsung Galaxy S smartphone. It consists of two datasets, a training set and a test set, each of which contains measurements taken on 30 subjects performing 6 different activities. Various measurements from the accelerometers and gyroscopes are provided for each subject and activity, and fourier transforms of these measurements are also provided.

####Data Collection and Cleaning
Data was originally obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data had been linked to the course website, however, and so was actually downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The data was unzipped, and processed using an R script called run_analysis.R, available for download from github repository:
https://github.com/sjl-datascience/Getting_and_Cleaning_Data_Course_Project.git

This script merged the training and test datasets, y_training.txt and y_test.txt, and extracted only the columns that represented means and standard deviations of the various measurements. It labeled the columns with the meaningful names provided in the features.txt file, and added the name of the activity subject number and the name of the activity represented by each row. The activity codes were obtained from x_training.txt and x_test.txt, while the activity numbers were extracted from subjects_training.txt and subjects_test.txt. Activity codes were translated via the activity_labels.txt file. Once the selected measurements had been extracted and properly labeled, the resulting dataset was exported as a tab-delimited text file called activityMeasurements.txt.

A second dataset was created by calculating the mean of each measurement in the activityMeasurements dataset by activity and subject. These values were also exported as a tab-delimited text file called meansByActivitySubject.txt.

#####Variables
      Number  Column Name                   Domain          Component     Acceleration     
      [1]   "activity"                    
      [2]   "subject"                   
      [3]   "tBodyAcc-mean()-X"               time            body          linear
      [4]   "tBodyAcc-mean()-Y"               time            body          linear
      [5]   "tBodyAcc-mean()-Z"               time            body          linear
      [6]   "tBodyAcc-std()-X"                time            body          linear
      [7]   "tBodyAcc-std()-Y"                time            body          linear
      [8]   "tBodyAcc-std()-Z"                time            body          linear
      [9]   "tGravityAcc-mean()-X"            time            gravity       linear
      [10]  "tGravityAcc-mean()-Y"            time            gravity       linear
      [11]  "tGravityAcc-mean()-Z"            time            gravity       linear
      [12]  "tGravityAcc-std()-X"             time            gravity       linear
      [13]  "tGravityAcc-std()-Y"             time            gravity       linear
      [14]  "tGravityAcc-std()-Z"             time            gravity       linear
      [15]  "tBodyAccJerk-mean()-X"           time            body          linear
      [16]  "tBodyAccJerk-mean()-Y"           time            body          linear
      [17]  "tBodyAccJerk-mean()-Z"           time            body          linear
      [18]  "tBodyAccJerk-std()-X"            time            body          linear
      [19]  "tBodyAccJerk-std()-Y"            time            body          linear
      [20]  "tBodyAccJerk-std()-Z"            time            body          linear
      [21]  "tBodyGyro-mean()-X"              time            body          angular
      [22]  "tBodyGyro-mean()-Y"              time            body          angular
      [23]  "tBodyGyro-mean()-Z"              time            body          angular
      [24]  "tBodyGyro-std()-X"               time            body          angular
      [25]  "tBodyGyro-std()-Y"               time            body          angular
      [26]  "tBodyGyro-std()-Z"               time            body          angular         
      [27]  "tBodyGyroJerk-mean()-X"          time            body          angular
      [28]  "tBodyGyroJerk-mean()-Y"          time            body          angular
      [29]  "tBodyGyroJerk-mean()-Z"          time            body          angular
      [30]  "tBodyGyroJerk-std()-X"           time            body          angular
      [31]  "tBodyGyroJerk-std()-Y"           time            body          angular
      [32]  "tBodyGyroJerk-std()-Z"           time            body          angular
      [33]  "tBodyAccMag-mean()"              time            body          linear
      [34]  "tBodyAccMag-std()"               time            body          linear
      [35]  "tGravityAccMag-mean()"           time            gravity       linear
      [36]  "tGravityAccMag-std()"            time            gravity       linear
      [37]  "tBodyAccJerkMag-mean()"          time            body          linear
      [38]  "tBodyAccJerkMag-std()"           time            body          linear
      [39]  "tBodyGyroMag-mean()"             time            body          angular
      [40]  "tBodyGyroMag-std()"              time            body          angular
      [41]  "tBodyGyroJerkMag-mean()"         time            body          angular
      [42]  "tBodyGyroJerkMag-std()"          time            body          angular
      [43]  "fBodyAcc-mean()-X"               frequency       body          linear
      [44]  "fBodyAcc-mean()-Y"               frequency       body          linear
      [45]  "fBodyAcc-mean()-Z"               frequency       body          linear
      [46]  "fBodyAcc-std()-X"                frequency       body          linear
      [47]  "fBodyAcc-std()-Y"                frequency       body          linear
      [48]  "fBodyAcc-std()-Z"                frequency       body          linear
      [49]  "fBodyAcc-meanFreq()-X"           frequency       body          linear
      [50]  "fBodyAcc-meanFreq()-Y"           frequency       body          linear
      [51]  "fBodyAcc-meanFreq()-Z"           frequency       body          linear
      [52]  "fBodyAccJerk-mean()-X"           frequency       body          linear        
      [53]  "fBodyAccJerk-mean()-Y"           frequency       body          linear
      [54]  "fBodyAccJerk-mean()-Z"           frequency       body          linear
      [55]  "fBodyAccJerk-std()-X"            frequency       body          linear
      [56]  "fBodyAccJerk-std()-Y"            frequency       body          linear
      [57]  "fBodyAccJerk-std()-Z"            frequency       body          linear
      [58]  "fBodyAccJerk-meanFreq()-X"       frequency       body          linear
      [59]  "fBodyAccJerk-meanFreq()-Y"       frequency       body          linear
      [60]  "fBodyAccJerk-meanFreq()-Z"       frequency       body          linear
      [61]  "fBodyGyro-mean()-X"              frequency       body          angular
      [62]  "fBodyGyro-mean()-Y"              frequency       body          angular
      [63]  "fBodyGyro-mean()-Z"              frequency       body          angular
      [64]  "fBodyGyro-std()-X"               frequency       body          angular
      [65]  "fBodyGyro-std()-Y"               frequency       body          angular
      [66]  "fBodyGyro-std()-Z"               frequency       body          angular
      [67]  "fBodyGyro-meanFreq()-X"          frequency       body          angular
      [68]  "fBodyGyro-meanFreq()-Y"          frequency       body          angular
      [69]  "fBodyGyro-meanFreq()-Z"          frequency       body          angular
      [70]  "fBodyAccMag-mean()"              frequency       body          linear
      [71]  "fBodyAccMag-std()"               frequency       body          linear
      [72]  "fBodyAccMag-meanFreq()"          frequency       body          linear
      [73]  "fBodyBodyAccJerkMag-mean()"      frequency       body          linear
      [74]  "fBodyBodyAccJerkMag-std()"       frequency       body          linear
      [75]  "fBodyBodyAccJerkMag-meanFreq()"  frequency       body          linear
      [76]  "fBodyBodyGyroMag-mean()"         frequency       body          angular
      [77]  "fBodyBodyGyroMag-std()"          frequency       body          angular
      [78]  "fBodyBodyGyroMag-meanFreq()"     frequency       body          angular
      [79]  "fBodyBodyGyroJerkMag-mean()"     frequency       body          angular
      [80]  "fBodyBodyGyroJerkMag-std()"      frequency       body          angular
      [81]  "fBodyBodyGyroJerkMag-meanFreq()" frequency       body          angular

Variables containing the string "Jerk" were derived in time from the linear acceleration and angular velocity. 
Variables containing the string "Mag" give the magnitude of these three-dimensional signals calculated using the Euclidean norm 

mean(): Mean value
std(): Standard deviation

Variables in the meansByActivitySubject dataset are the means of these variables calculated by subjected and activity.

