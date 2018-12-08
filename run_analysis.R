# Merges the training and the test sets to create one data set.
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <- "ucidata.zip"
dir <- ("~/Desktop/")
download.file(url,filename)
unzip("ucidata.zip", files = NULL, exdir=".")
# who performed the activity 
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
# detailed information for every activities
x_trainDate <- read.table("UCI HAR Dataset/train/X_train.txt")
x_testDate <- read.table("UCI HAR Dataset/test/X_test.txt")
# activities
y_trainDate <- read.table("UCI HAR Dataset/train/y_train.txt")
y_testDate <- read.table("UCI HAR Dataset/test/y_test.txt")
#
activityNames <- read.table("UCI HAR Dataset/activity_labels.txt")
#
features <- read.table("UCI HAR Dataset/features.txt")
#
subjectValue <- rbind(subject_test,subject_train, header = FALSE)
featuresValue <- rbind(x_trainDate,x_testDate, header = FALSE)
activitiesValue <- rbind(y_trainDate,y_testDate, header = FALSE)
#
colnames(featuresValue) <- t(features[2])
colnames(activitiesValue) <- "Activity"
colnames(subject) <- "Subject"
#
rawData <- cbind(subject,activitiesValue,featuresValue)
#
# Extracts only the measurements on the mean and standard deviation for each measurement.
#
meanData <- grep("mean|std", names(rawData), ignore.case=TRUE, value = TRUE)
tempSet <-  c("Subject","Activity",meanData)
meanOnlyset <- rawData[,tempSet]
#
#Uses descriptive activity names to name the activities in the data set
#
actList <- as.character(activityNames[,2])
for (i in 1:length(actList)) {
       meanOnlyset[, 2][meanOnlyset[, 2] == i] <- actList[i]
}
#
#Appropriately labels the data set with descriptive variable names.
#
names(meanOnlyset)<-gsub("Acc", "Accelerometer", names(meanOnlyset))
names(meanOnlyset)<-gsub("Gyro", "Gyroscope", names(meanOnlyset))
names(meanOnlyset)<-gsub("^t", "Time", names(meanOnlyset))
names(meanOnlyset)<-gsub("^f", "Frequency", names(meanOnlyset))
#
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
write.table(meanOnlyset, "TidyData.txt", row.name=FALSE)
