Code Book for Tidy Data Set

Author: skierduder26
Date: 6/21/15

Description:
The Tidy Data Set in "Tidy_Data.txt" was produced by the "run_analysis.R" R Script
It summarizes the human activity cell phone activity measurement data by presenting
the mean of each varible for each subject for each activity

Variable Names (Columns 1 and 2 in Tidy Data Set):

"Subject" - Subject Number - There were 30 Subjects
"Activity" - There were six activities tested: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, and LAYING


The measurement variables were downselected from the full list of measurements, which can be found in "features_info.txt". These are limited to the means and standard deviations of for each of the following measurements in each of the 3 spatial dimensions (X, Y, and Z).

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Variable Names (Columns 3 through 81 in Tidy Data Set):

"tBodyAcc.mean.X"
"tBodyAcc.mean.Y"
"tBodyAcc.mean.Z"
"tBodyAcc.std.X"
"tBodyAcc.std.Y"
"tBodyAcc.std.Z"
"tGravityAcc.mean.X"
"tGravityAcc.mean.Y"
"tGravityAcc.mean.Z"
"tGravityAcc.std.X"
"tGravityAcc.std.Y"
"tGravityAcc.std.Z"
"tBodyAccJerk.mean.X"
"tBodyAccJerk.mean.Y"
"tBodyAccJerk.mean.Z"
"tBodyAccJerk.std.X"
"tBodyAccJerk.std.Y"
"tBodyAccJerk.std.Z"
"tBodyGyro.mean.X"
"tBodyGyro.mean.Y"
"tBodyGyro.mean.Z"
"tBodyGyro.std.X"
"tBodyGyro.std.Y"
"tBodyGyro.std.Z"
"tBodyGyroJerk.mean.X"
"tBodyGyroJerk.mean.Y"
"tBodyGyroJerk.mean.Z"
"tBodyGyroJerk.std.X"
"tBodyGyroJerk.std.Y"
"tBodyGyroJerk.std.Z"
"tBodyAccMag.mean"
"tBodyAccMag.std"
"tGravityAccMag.mean"
"tGravityAccMag.std"
"tBodyAccJerkMag.mean"
"tBodyAccJerkMag.std"
"tBodyGyroMag.mean"
"tBodyGyroMag.std"
"tBodyGyroJerkMag.mean"
"tBodyGyroJerkMag.std"
"fBodyAcc.mean.X"
"fBodyAcc.mean.Y"
"fBodyAcc.mean.Z"
"fBodyAcc.std.X"
"fBodyAcc.std.Y"
"fBodyAcc.std.Z"
"fBodyAcc.meanFreq.X"
"fBodyAcc.meanFreq.Y"
"fBodyAcc.meanFreq.Z"
"fBodyAccJerk.mean.X"
"fBodyAccJerk.mean.Y"
"fBodyAccJerk.mean.Z"
"fBodyAccJerk.std.X"
"fBodyAccJerk.std.Y"
"fBodyAccJerk.std.Z"
"fBodyAccJerk.meanFreq.X"
"fBodyAccJerk.meanFreq.Y"
"fBodyAccJerk.meanFreq.Z"
"fBodyGyro.mean.X"
"fBodyGyro.mean.Y"
"fBodyGyro.mean.Z"
"fBodyGyro.std.X"
"fBodyGyro.std.Y"
"fBodyGyro.std.Z"
"fBodyGyro.meanFreq.X"
"fBodyGyro.meanFreq.Y"
"fBodyGyro.meanFreq.Z"
"fBodyAccMag.mean"
"fBodyAccMag.std"
"fBodyAccMag.meanFreq"
"fBodyAccJerkMag.mean"
"fBodyAccJerkMag.std"
"fBodyAccJerkMag.meanFreq"
"fBodyGyroMag.mean"
"fBodyGyroMag.std"
"fBodyGyroMag.meanFreq"
"fBodyGyroJerkMag.mean"
"fBodyGyroJerkMag.std"
"fBodyGyroJerkMag.meanFreq"
