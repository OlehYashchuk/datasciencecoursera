### This code book summarizes data fields in tidyData.txt.

# For each record it is provided:

- Its activity label. 
- An identifier of the subject who carried out the experiment.
- A 86-feature vector with mean time and frequency domain variables. 

# Identifiers
subject - The ID of the test subject  
activity - The type of activity performed when the corresponding measurements were taken  

# Measurements  (Range [-1; 1])
- mean-of-the-tBodyAcc-mean()-X  
- mean-of-the-tBodyAcc-mean()-Y  
- mean-of-the-tBodyAcc-mean()-Z  
- mean-of-the-tBodyAcc-std()-X  
- mean-of-the-tBodyAcc-std()-Y  
- mean-of-the-tBodyAcc-std()-Z  
- mean-of-the-tGravityAcc-mean()-X  
- mean-of-the-tGravityAcc-mean()-Y  
- mean-of-the-tGravityAcc-mean()-Z  
- mean-of-the-tGravityAcc-std()-X  
- mean-of-the-tGravityAcc-std()-Y  
- mean-of-the-tGravityAcc-std()-Z  
- mean-of-the-tBodyAccJerk-mean()-X  
- mean-of-the-tBodyAccJerk-mean()-Y  
- mean-of-the-tBodyAccJerk-mean()-Z  
- mean-of-the-tBodyAccJerk-std()-X  
- mean-of-the-tBodyAccJerk-std()-Y  
- mean-of-the-tBodyAccJerk-std()-Z  
- mean-of-the-tBodyGyro-mean()-X  
- mean-of-the-tBodyGyro-mean()-Y  
- mean-of-the-tBodyGyro-mean()-Z  
- mean-of-the-tBodyGyro-std()-X  
- mean-of-the-tBodyGyro-std()-Y  
- mean-of-the-tBodyGyro-std()-Z  
- mean-of-the-tBodyGyroJerk-mean()-X  
- mean-of-the-tBodyGyroJerk-mean()-Y  
- mean-of-the-tBodyGyroJerk-mean()-Z  
- mean-of-the-tBodyGyroJerk-std()-X  
- mean-of-the-tBodyGyroJerk-std()-Y  
- mean-of-the-tBodyGyroJerk-std()-Z  
- mean-of-the-tBodyAccMag-mean()  
- mean-of-the-tBodyAccMag-std()  
- mean-of-the-tGravityAccMag-mean()  
- mean-of-the-tGravityAccMag-std()  
- mean-of-the-tBodyAccJerkMag-mean()  
- mean-of-the-tBodyAccJerkMag-std()  
- mean-of-the-tBodyGyroMag-mean()  
- mean-of-the-tBodyGyroMag-std()  
- mean-of-the-tBodyGyroJerkMag-mean()  
- mean-of-the-tBodyGyroJerkMag-std()  
- mean-of-the-fBodyAcc-mean()-X  
- mean-of-the-fBodyAcc-mean()-Y  
- mean-of-the-fBodyAcc-mean()-Z  
- mean-of-the-fBodyAcc-std()-X  
- mean-of-the-fBodyAcc-std()-Y  
- mean-of-the-fBodyAcc-std()-Z  
- mean-of-the-fBodyAcc-meanFreq()-X  
- mean-of-the-fBodyAcc-meanFreq()-Y  
- mean-of-the-fBodyAcc-meanFreq()-Z  
- mean-of-the-fBodyAccJerk-mean()-X  
- mean-of-the-fBodyAccJerk-mean()-Y  
- mean-of-the-fBodyAccJerk-mean()-Z  
- mean-of-the-fBodyAccJerk-std()-X  
- mean-of-the-fBodyAccJerk-std()-Y  
- mean-of-the-fBodyAccJerk-std()-Z  
- mean-of-the-fBodyAccJerk-meanFreq()-X  
- mean-of-the-fBodyAccJerk-meanFreq()-Y  
- mean-of-the-fBodyAccJerk-meanFreq()-Z  
- mean-of-the-fBodyGyro-mean()-X  
- mean-of-the-fBodyGyro-mean()-Y  
- mean-of-the-fBodyGyro-mean()-Z  
- mean-of-the-fBodyGyro-std()-X  
- mean-of-the-fBodyGyro-std()-Y  
- mean-of-the-fBodyGyro-std()-Z  
- mean-of-the-fBodyGyro-meanFreq()-X  
- mean-of-the-fBodyGyro-meanFreq()-Y  
- mean-of-the-fBodyGyro-meanFreq()-Z  
- mean-of-the-fBodyAccMag-mean()  
- mean-of-the-fBodyAccMag-std()  
- mean-of-the-fBodyAccMag-meanFreq()  
- mean-of-the-fBodyBodyAccJerkMag-mean()  
- mean-of-the-fBodyBodyAccJerkMag-std()  
- mean-of-the-fBodyBodyAccJerkMag-meanFreq()  
- mean-of-the-fBodyBodyGyroMag-mean()  
- mean-of-the-fBodyBodyGyroMag-std()  
- mean-of-the-fBodyBodyGyroMag-meanFreq()  
- mean-of-the-fBodyBodyGyroJerkMag-mean()  
- mean-of-the-fBodyBodyGyroJerkMag-std()  
- mean-of-the-fBodyBodyGyroJerkMag-meanFreq()  
- mean-of-the-angle(tBodyAccMean,gravity)  
- mean-of-the-angle(tBodyAccJerkMean),gravityMean)  
- mean-of-the-angle(tBodyGyroMean,gravityMean)  
- mean-of-the-angle(tBodyGyroJerkMean,gravityMean)  
- mean-of-the-angle(X,gravityMean)  
- mean-of-the-angle(Y,gravityMean)  
- mean-of-the-angle(Z,gravityMean)  

# Activity Labels  
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING
