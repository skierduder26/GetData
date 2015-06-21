# Run Analysis
# Course Project for Getting and Cleaning Data Coursera

# Author: skierduder26
# Date: 06/12/15

# This script accomplishes the following:

# Merges the training and the test sets to create one data set.
# Extracts the mean and standard deviation for each measurement. 
# Creates a independent tidy data set with the average of each variable for each activity and each subject.

# Set Working Directory to Course Project Folder

setwd("~/Documents/Coursera/GetData/Assignments/Course Project")

# Read in Features List

features <- read.table("./UCI HAR Dataset/features.txt", colClasses = c("integer","character"))

# Create reduced features list of means and standard devs
# Include all variables that include the words "mean" or "std"
# Ignore variables with "Mean" as they are comparisons between two variables

features_list <- data.frame(Val = integer(), Name = character())

for (i in seq_along(features[,1])){
  if ((grepl("mean", features[i,2]) == TRUE) | (grepl("std", features[i,2]) == TRUE)){
    features_list <- rbind(features_list,features[i,]) 
  }
}

# Read in Activity Data

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", colClasses = c("integer","character"))
activity_labels <- gsub("_"," ",activity_labels[,2])

# Read in Test Data

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Read in Train Data

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Merge Test and Train datasets to create one dataset

X <- rbind(X_test,X_train)
activity <- rbind(y_test,y_train)
subject <- rbind(subject_test,subject_train)

# Reduce X to only columns with "mean" or "std" using our reduced features list

narrowX <- X[,features_list[,1]]

# Clean Up and Rename columns to be human readable

colnames(subject) <- "Subject"

colnames(activity) <- "Activity"

features_list[,2] <- gsub("-",".",features_list[,2])
features_list[,2] <- gsub("\\(\\)","",features_list[,2])
features_list[,2] <- gsub("BodyBody","Body",features_list[,2])

colnames(narrowX) <- features_list[,2]

# Add subject and activity to narrowX and sort according to subject and activity

narrowX <- cbind(activity,narrowX)
narrowX <- cbind(subject,narrowX)

sortedX <- narrowX[order(narrowX$Subject,narrowX$Activity),]

# Loop through sorted data and calculate means

total_subjects = dim(unique(subject))[1]
total_activities = dim(unique(activity))[1]

tidyRow <- total_subjects * total_activities
tidyCol <- dim(sortedX)[2]

tidy_data <- data.frame(matrix(ncol = tidyCol, nrow = tidyRow))
colnames(tidy_data) <- names(sortedX)

for (i in seq(1,total_subjects,1)){
  for (j in seq(1,total_activities,1)){
    
    row = total_activities*(i-1) + j

    tidy_data[row,1] <- i
    tidy_data[row,2] <- activity_labels[j] # Use descriptive activity name rather than number
    tidy_data[row,3:dim(tidy_data)[2]] <- colMeans(sortedX[(sortedX$Subject == i & sortedX$Activity == j),3:dim(sortedX)[2]])

  }
}

# Save Tidy Data Set to File

filepath = "tidy_data.txt"

write.table(tidy_data, filepath, row.names = FALSE, eol = "\r\n")

