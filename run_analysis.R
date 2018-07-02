########################################################
#Coursera project
#getting and cleaning data
#Hui Xiong 06/26/2018
########################################################
library(dplyr)

# section 1 download and unzip data
if(!file.exists("rawData.zip")){
      url1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(url1,"rawData.zip")
      unzip("rawData.zip")}

# section 2 read data
folderTrain<-"./UCI HAR Dataset/train"
folderTest<-"./UCI HAR Dataset/test"
xTrain<-read.table(file.path(folderTrain,"X_train.txt"),header=FALSE)
yTrain<-read.table(file.path(folderTrain,"y_train.txt"),header=FALSE)
subjectTrain<-read.table(file.path(folderTrain,"subject_train.txt"),header=FALSE)
xTest<-read.table(file.path(folderTest,"X_test.txt"),header=FALSE)
yTest<-read.table(file.path(folderTest,"y_test.txt"),header=FALSE)
subjectTest<-read.table(file.path(folderTest,"subject_test.txt"),header=FALSE)
features<-read.table("./UCI HAR Dataset/features.txt",as.is=TRUE)
activityDT<-read.table("./UCI HAR Dataset/activity_labels.txt")

# section 3 column name assignment
#goal 4 appropriately labels the data set with descriptive variable names
colnames(subjectTest)<-"subject"
colnames(subjectTrain)<-"subject"
colnames(yTest)<-"activity"
colnames(yTrain)<-"activity"
#colnames(xTest)<-gsub("[[:punct:]]","",features[,2])
#colnames(xTrain)<-gsub("[[:punct:]]","",features[,2])
colnames(xTest)<-features[,2]
colnames(xTrain)<-features[,2]
colnames(activityDT)<-c("activityID","activityLabel")

# section 4 merge the training and test data sets
# goal 1 merges the training and the test sets to creat one data set
testData<-cbind(subjectTest,yTest,xTest)
trainData<-cbind(subjectTrain,yTrain,xTrain)
mergedData<-rbind(testData,trainData)
rm(testData,trainData,xTest,xTrain,yTest,yTrain,features,subjectTest,subjectTrain)

# section 5 label activity using descriptive activity names
# goal 3 uses descriptive activity names to name the activities
# in the data set
mergedData$activity<-factor(mergedData$activity,levels=activityDT[,1],
         labels=activityDT[,2])

# section 6 Extract data
# goal 2 Extracts only the measurements on the mean and standard 
# deviation for each measurement. 
# goal 4 Appropriately labels the data set with descriptive 
# variable names.
#activityMeanAndStd<-select(mergedData,subject,activity,
#                      matches("mean|std",ignore.case=TRUE))
selectColumn<-grepl("mean|std", colnames(mergedData));
mergedData<-data.frame(mergedData)
colnames(mergedData)<-gsub("[[:punct:]]","",colnames(mergedData))
activityMeanAndStd<-select(mergedData,subject,activity,
                           colnames(mergedData)[selectColumn])

# section 7 tidy data
# goal 5 From the data set in step 4, creates a second, independent tidy 
#data set with the average of each variable for each activity and each subject.
tidyData<-activityMeanAndStd %>% 
      group_by(subject,activity) %>% 
      summarize_all(funs(mean))

#step 8 save the tidy data set
write.table(tidyData,"tidyData.txt",sep ="   ")