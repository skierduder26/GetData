---
title: "README.md"
author: "skierduder26"
date: "06/21/2015"
output: html_document
---

The README file summarizes the "run_analysis.R" script.

The script reads in the X_test and X_train data sets from the "UCI HAR Dataset" folder and merges them
to create one dataset "X" that includes all of the test and train measurements.

The script searches through the features list to identify all the variables that include mean and standard
deviation. It uses this list to reduce the data set X from 561 variable to 79 variables.

The script then uses the list of features to rename the columns so that they have human-readable names

The script organizes the reduced data set according to subject and activity type and then creates a
new dataset that is the averages of each variable for each subject and activity. It writes this
"tidy_data" data set to the "tidy_data.txt" file.