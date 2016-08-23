getwd()
setwd('...')

library(dplyr)

rm(list = ls())


# ##############################################################################
# 0. Loading initial data set

# url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
# f <- file.path('.', 'InitialData.zip')
# download.file(url, f)
# unzip('./InitialData.zip')

dir('./UCI HAR Dataset')

# Exporting train sample
X_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
# Size of X_train, ~33 mb
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



# ##############################################################################
# 1. Merges the training data set and the test data set to create one data set.

# Binding together train and test samples
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)



# ##############################################################################
# 2. Extracts only the measurements on the mean and standard deviation 
# for each measurement.

points <- features$V1[grep(c('[Mm]ean|[Ss]td'), features$V2)]
X <- select(X, points)

# Binding together activity labels, subject and combained train and test samples
data <- cbind(y, subject, X)



# ##############################################################################
# 3. Uses descriptive activity names to name the activities in the data set

# Pulling up the names of the activities by its code
data$V1 <- activity_labels$V2[match(y$V1, activity_labels$V1)]



# ##############################################################################
# 4. Appropriately labels the data set with descriptive variable names.

# Pulling up the names of the columns in the table
colnames(data) <- c('activity', 'subject', as.character(features$V2[points]))



# ##############################################################################
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject. 

tidyData <- data %>%
        group_by(activity, subject) %>%
        summarize_each(funs(mean))

colnames(tidyData) <- c(names(tidyData[1 : 2]), 
                        gsub(' ', 
                             '', 
                             paste('mean-of-the-', 
                                   names(tidyData[3 : length(tidyData)]))))

tidyData <- as.data.frame(tidyData)



# ##############################################################################
# Saving tidy data set
write.table(tidyData, './UCI HAR Dataset/tidyData')
