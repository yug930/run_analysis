# Code Book

## # Merges the training and the test sets to create one data set.

url : file url 
filename : Name for the file
subject_train : subject IDs for train
subject_test : subject IDs for test
x_trainData: features data for train 
x_testData : features data for test
y_trainData : activities data for train 
y_testData  : activities data for test 
activityNames : activities' names
features: features' names
subjectValue: subject 
featuresValue: feature data for both test and train
activitiesValue: activities data for both test and train
colnames(featuresValue) : names for feature column 
colnames(activitiesValue): name for activity column
colnames(subject): name for subject column
rawData: all data

## Extracts only the measurements on the mean and standard deviation for each measurement.
meanData: list contains only the measurements on the mean and standard deviation for each measurement
tempSet: create a data has the same data layout as rawData
meanOnlyset : Data set contains only the mean and standard deviation

## Uses descriptive activity names to name the activities in the data set
actList: list contains all the names for activities
