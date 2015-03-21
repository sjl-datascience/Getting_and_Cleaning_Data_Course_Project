---
title: "Getting & Cleaning Data - Course Project"
author: "SJL"
date: "Saturday, March 21, 2015"
output: html_document
---
R Script run_analysis.R reads data collected from accelerometers from the Samsung Galaxy S smartphone.
The data was originally obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
but was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

The script  combines the results from the training and test sets, extracts the columns that display means and standard deviations of the measurements, shows which activity was associated with each measurement and labels the columns with descriptive names. Information about how to interpret these names can be found in features_info.txt.

To run the script, edit the directory in the line setwd("C:/UCI HAR Dataset") to the directory containing the downloaded data, then run run_analysis.R. 

The script produces two tidy datasets, which are exported as tab-delimited text files. These are:
  activityMeasurements.txt - contains the means and standard deviation measurements reported in the       training and testing datasets.
  meansByActivitySubject.txt - contains the means of the columns from activityMeasurements by activity and subject.