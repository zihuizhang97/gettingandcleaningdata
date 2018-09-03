library(dplyr)

# download zipfile 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"
if (!file.exists(zipFile)) {
  download.file(url, zipFile, mode = "wb")
}

# unzip zipfile 
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipFile)
}

# read training data
training.subjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
training.values <- read.table(file.path(dataPath, "train", "X_train.txt"))
training.activity <- read.table(file.path(dataPath, "train", "y_train.txt"))
training.data <- cbind(training.subjects, training.values, training.activity)

# read test data
test.subjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
test.values <- read.table(file.path(dataPath, "test", "X_test.txt"))
test.activity <- read.table(file.path(dataPath, "test", "y_test.txt"))
test.data <- cbind(test.subjects, test.values, test.activity)

# read features, don't convert text labels to factors
features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)

# read activity labels
activities <- read.table(file.path(dataPath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

# concatenate individual data tables to make single data table
activity.data <- rbind(training.data, test.data)
colnames(activity.data) <- c("subject", features[, 2], "activityId")
activity.data <- merge(activities, activity.data)
activity.data$activityId <- activity.data[, ncol(activity.data)]
activity.data <- activity.data[,2:564]
activity.data[,1:2] <- activity.data[,c(2,1)]
colnames(activity.data[,1:2]) <- c("subject", "activity")

# determine columns of data set to keep based on column name
activity.data <- activity.data[, grepl("subject|activity|mean|std", colnames(activity.data))]

# group by subject and activity and summarise using mean
test <- activity.data %>% 
  group_by(subject, activityLabel) %>%
  summarise_at(vars(),funs(mean))

# get column names
column <- colnames(activity.data)

# remove special characters
column <- gsub("[\\(\\)-]", "", column)

# expand abbreviations and clean up names
column <- gsub("^f", "frequency", column)
column <- gsub("^t", "time", column)
column <- gsub("Acc", "Accelerometer", column)
column <- gsub("Freq", "Frequency", column)
column <- gsub("Gyro", "Gyroscope", column)
column <- gsub("Mag", "Magnitude", column)
column <- gsub("mean", "Mean", column)
column <- gsub("std", "StandardDeviation", column)
column <- gsub("BodyBody", "Body", column)

# use new labels as column names
colnames(activity.data) <- column

# output to file "tidy_data.txt"
write.table(activity.data, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)