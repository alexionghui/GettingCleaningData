#**Coursera Course project**
###**Getting and Cleaning Data**
Hui Xiong
07/01/2018
###Overview
The purpose of this project is to demonstrate my capability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The project contains a R script called run_analysis.R that does the following.
*1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.*

###Data Set
The data linked to represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The detailed information of the data set is included in the 'README.txt' file in the 'zip' file.

###Files
The repository contains the following files.
1. 'README.md'
2. 'CodeBook.md' :  code book that describes the variables, the data, and any transformations or work that you performed to clean up the data
3. 'run_analysis.R' : the R script collect , work with and clean a data set.
4. 'tidy.txt' : the tidy data set as the result of the project

###Software Dependence
dplry package version 0.7.4 
platform       x86_64-pc-linux-gnu
system         x86_64, linux-gnu
language       R version 3.4.4 (2018-03-15)