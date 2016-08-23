# This is a brief description of the implementation of the project with an explanation of the variables and functions.

### Coure Project was carried out according to the instructions step by step  



## Step 0. Loading initial data set 
1). Loading initial data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#### download.file() - loading initial data set  
#### unzip() - decompressing data  
  
2). Exporting all the data: train sample, test sample, activity labels, features
#### functions: read.table()
X_train - train sample  
y_train - train labels  
subject_train - subject who performed the activity

X_test - test sample  
y_test - test labels  
subject_test - subject who performed the activity

activity_labels - activity names  
features - List of all features


## Step 1. Merges the training data set and the test data set to create one data set
#### functions: rbind()  
X - combined test and train samples  
y - combined test and train labels  
subject - combined test and train subject

## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement  
#### functions: grep(), select(), cbind()
points - number of variables that contain the mean either the variance  
X - combined test and train samples with columns specified by "points"  
data - binded together activity labels, subject and combained train and test samples "X"  

## Step 3. Uses descriptive activity names to name the activities in the data set
data$V1 - pulled up the names of the activities by its code  
  
## Step 4. Appropriately labels the data set with descriptive variable names
#### colnames() - pulling up the names of the columns to the "data" variable  

## Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
#### functions: group_by(), summarize_each(), gsub(), paste()  
tidyData - appropriate tidy data set cooked with dplyr  
colnames() - all variables in tidyData receive the prefix "mean-of-the-"  
  
## Saving tidy data set
write.table()
