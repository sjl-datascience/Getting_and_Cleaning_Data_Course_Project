# Run_analysis.R
# Class Project for the Coursera COurse "Getting and Cleaning Data"
library(plyr)
library(dplyr)
setwd("C:/Users/Susan/Documents/datascience/Cleaning_Data/Class_Project/UCI HAR Dataset")
# Assemble datasets
testmatrix <- read.table("test/X_test.txt")
trainmatrix <- read.table("train/X_train.txt")
allmatrix <- rbind(testmatrix, trainmatrix)
# prepare labels  to give the columns descriptive variable names
colnames <- read.table("features.txt")
colnames <- colnames[,2]
colnames(allmatrix)<- colnames
# select only the mean and std columns and apply column names
selectedCols <- allmatrix[,regexpr("mean|std", colnames(allmatrix)) > 0]
# add the subject to each row
testSubs <- read.table("test/subject_test.txt")
trainSubs <- read.table("train/subject_train.txt")
allSubs <- rbind(testSubs, trainSubs)
names(allSubs) <- c("subject")
subjectSelectedCols <- cbind(allSubs, selectedCols)
# get activities that correspond to the rows of measurements
testRnames <- read.table("test/y_test.txt")
trainRnames <- read.table("train/y_train.txt")
allRnames <- rbind(testRnames, trainRnames)
# change from activity numbers to activity names
names(allRnames) <- c("activity_num")
activities <- read.table("activity_labels.txt")
names(activities) <- c("activity_num", "activity")
nameNum <- left_join(allRnames,activities, by="activity_num")
activity <- nameNum[,2]
# add the activity names as the first column in the table of measurements
activityMeasurements <- cbind(activity, subjectSelectedCols)
# create a second tidy dataset containing the average of each variable for each 
# activity and each subject
measurementNames <- colnames(activityMeasurements)[3:length(activityMeasurements)]
meansByActivitySubject <- ddply(activityMeasurements, c("activity", "subject"), function(x) colMeans(x[measurementNames]))
colnames(meansByActivitySubject) <- c("activity", "subject", paste("mean", colnames(meansByActivitySubject)[3:ncol(meansByActivitySubject)], sep = "_"))
# for testing purposes, comment out for submission
# write.table(activityMeasurements, "activityMeasurements.txt", sep="\t") 
# write.table(newdf, "newdf.txt", sep="\t") 