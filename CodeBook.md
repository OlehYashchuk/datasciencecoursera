# This is the Code Book
## Preview
1. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information

2. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md


## DATA DICTIONARY

'# 0. Loading initial data set
'# url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
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

