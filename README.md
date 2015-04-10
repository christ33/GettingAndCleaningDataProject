# Getting and Cleaning Data Project

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set.   
The goal is to prepare tidy data that can be used for later analysis.


### Repo contents

* README.md (this file).
* CodeBook.md (describes the variables, the data, and any transformations or work to clean up the data).
* run_analysis.R (see bellow).
* tidydata.txt (the tidy data set).


### The R script called run_analysis.R does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### Instructions:

* Download the project's data (see link bellow).
* Get the file run_analysis.R from this repo.
* Set the working directory, put the run_analysis.R and the project's data unzipped folder in the same working directory.
* To check the tidydata.txt open with: 
    + *testing <- read.table("tidydata.txt", header=TRUE)*
    + *View(testing)*

Here are the data for the project:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 