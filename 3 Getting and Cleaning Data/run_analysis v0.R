getwd()
# setwd('d:/Oleh/Coursera/Data Science/3 Getting and Cleaning Data')
setwd('d:/D/Coursera/Data Science/Getting and Cleaning Data/Course Project/datasciencecoursera/3 Getting and Cleaning Data')

library(dplyr)

rm(list = ls())



# ##############################################################################
# 0. Loading initial data set


# dir.create('data')
# url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
# f <- file.path('.', 'InitialData.zip')
# download.file(url, f)
# unzip('./InitialData.zip')

dir('./UCI HAR Dataset')

# Exporting train sample
X_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
# Size of X_train, mb
# 7352*561*8/1000000
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')

# Exporting test sample
X_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt')
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')

# Exporting labels
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')
features <- read.table('./UCI HAR Dataset/features.txt')
head(features)



# ##############################################################################
# 1. Merges the training and the test sets to create one data set.

# Binding together train and test samples
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)

# Adding subject to the combained table of train and test samples
subject <- rbind(subject_train, subject_test)

# Pulling up the names of the activities by its code
y$V1 <- activity_labels$V2[match(y$V1, activity_labels$V1)]
distinct(y)

# Binding together activity labels, subject and combained train and test samples
data <- cbind(y, subject, X)

# Pulling up the names of the columns in the table
colnames(data) <- c('activity', 'subject', as.character(features$V2))



# ##############################################################################
# 2. Extracts only the measurements on the mean and standard deviation 
# for each measurement.
interestingColumns <- colnames(data)[grep(c('[Mm]ean|[Ss]td'), colnames(data))]
data <- data[, c('activity', 'subject', interestingColumns)]

# ##############################################################################
# 3. Uses descriptive activity names to name the activities in the data set

# ##############################################################################
# 4. Appropriately labels the data set with descriptive variable names.

# ##############################################################################
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject. 

## This part is new:
# library(dplyr)
# grouped <- group_by(melted, sex, treatment)
# summarise(grouped, mean=mean(value), sd=sd(value))

test <- data[1:10, c(1,3)]
# test$subject <- c(1, 1, 2, 2, 3, 2, 1, 4, 5, 5)
test$activity <- c('s', 's', 'l', 'a', 'l', 'u', 's', 'u', 'l', 'a')

test %>%
        group_by(activity) %>%
        summarize(mean(subject), mean(tBodyAcc-mean()-X))

# grouped <- group_by(test, subject)
# summarize(grouped, mean())

# summarize(grouped, mean=mean(tBodyAcc-mean()-X))
# summarize