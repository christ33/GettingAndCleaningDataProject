# Getting and Cleaning Data Project R script
#
# The run_analysis.R does the following. 
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.


# 1 + Reads test set and labels, train set and labels, subject

testset <- read.table("UCI HAR Dataset/test/X_test.txt")
testlabels <- read.table("UCI HAR Dataset/test/y_test.txt")
testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt")

trainset <- read.table("UCI HAR Dataset/train/X_train.txt")
trainlabels <- read.table("UCI HAR Dataset/train/y_train.txt")
trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt")

mergedset <- rbind(trainset, testset)
mergedlabels <- rbind(trainlabels, testlabels)
mergedsubject <- rbind(trainsubject, testsubject)


# 2 + Reads features and fixies (removes (), lowercase etc.)

features <- read.table("UCI HAR Dataset/features.txt")
extracted <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
mergedset <- mergedset[, extracted]

names(mergedset) <- features[extracted, 2]
names(mergedset) <- gsub("\\(|\\)", "", names(mergedset))
names(mergedset) <- tolower(names(mergedset))

# names(mergedset) 66 vars like fbodygyro-std-z
# names(mergedlabels) 1 var: "V1"
# names(mergedsubject) 1 var: "V1"


# 3 + Reads activity

activities <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]
mergedlabels[,2] = activities[mergedlabels[,1]]
names(mergedlabels) = c("activityid", "activitylabel")

# names(mergedlabels) 2 vars: "activityid", "activitylabel"


# 4

names(mergedsubject) = "subject"

# names(mergedsubject) the  var "V1" becomes "subject"

mergedtotal <- cbind(mergedsubject, mergedlabels, mergedset)

# For info: dim(mergedtotal) [1] 10299    69
# looks like activityid = activitylabel, wiil fix bellow at step 5


# 5 + melting and casting

library(data.table)
library(reshape2)

datalabels = setdiff(colnames(mergedtotal), c("subject","activityid","activitylabel"))
mergedtotalMelt <- melt(mergedtotal,id=c("subject","activityid","activitylabel"), measure.vars=datalabels)
tidydata = dcast(mergedtotalMelt, subject + activitylabel ~ variable, mean)

write.table(tidydata, file = "tidydata.txt", row.names=FALSE)
