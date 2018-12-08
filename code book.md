# Code Book

## # Merges the training and the test sets to create one data set.

url : file url<br />   
filename : Name for the file<br />   
subject_train : subject IDs for train<br />
subject_test : subject IDs for test <br />
x_trainData: features data for train <br />
x_testData : features data for test <br />
y_trainData : activities data for train<br /> 
y_testData  : activities data for test <br />
activityNames : activities' names<br />
features: features' names<br />
subjectValue: subject <br />
featuresValue: feature data for both test and train<br />
activitiesValue: activities data for both test and train<br />
colnames(featuresValue) : names for feature column <br />
colnames(activitiesValue): name for activity column<br />
colnames(subject): name for subject column<br />
rawData: all data<br />

## Extracts only the measurements on the mean and standard deviation for each measurement.
meanData: list contains only the measurements on the mean and standard deviation for each measurement
tempSet: create a data has the same data layout as rawData<br />
meanOnlyset : Data set contains only the mean and standard deviation<br />

## Uses descriptive activity names to name the activities in the data set
actList: list contains all the names for activities<br />
