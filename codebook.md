# Codebook

Codebook for Getting And Cleaning Data Coursera Project.


### Prologue:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


### Program synoptic analysis:

* Merged the training and the test sets to create one data set ("mergedset" 10299x561)

* Extracted only the measurements on the mean and standard deviation for each measurement which in combination with features.txt file resulted to the 10299x66 "mergedset".

* Removed the parenthesis, "lowercased" the characters.

* Labeled the data set with descriptive variable names.

* Created a tidy data set with the average of each variable for each activity and each subject ("tidydata" 180x68).

* The script uses the "data.table" and "reshape2" libraries.


### Epilogue:

The generated tidy data set contains 180 observations and 68 variables

* 180 observations:
	+ 30 subjects (volunteers) x 6 activities

* 68 Variables:
	+ "subject", "activitylabel" plus only the average measurements on the mean and standard deviation for each measurement.

"subject"                   
"activitylabel"             
"tbodyacc.mean.x"           
"tbodyacc.mean.y"          
"tbodyacc.mean.z"           
"tbodyacc.std.x"            
"tbodyacc.std.y"            
"tbodyacc.std.z"           
"tgravityacc.mean.x"        
"tgravityacc.mean.y"        
"tgravityacc.mean.z"       
"tgravityacc.std.x"        
"tgravityacc.std.y"         
"tgravityacc.std.z"         
"tbodyaccjerk.mean.x"       
"tbodyaccjerk.mean.y"      
"tbodyaccjerk.mean.z"       
"tbodyaccjerk.std.x"        
"tbodyaccjerk.std.y"       
"tbodyaccjerk.std.z"       
"tbodygyro.mean.x"          
"tbodygyro.mean.y"          
"tbodygyro.mean.z"          
"tbodygyro.std.x"          
"tbodygyro.std.y"           
"tbodygyro.std.z"           
"tbodygyrojerk.mean.x"      
"tbodygyrojerk.mean.y"     
"tbodygyrojerk.mean.z"      
"tbodygyrojerk.std.x"      
"tbodygyrojerk.std.y"       
"tbodygyrojerk.std.z"      
"tbodyaccmag.mean"          
"tbodyaccmag.std"           
"tgravityaccmag.mean"       
"tgravityaccmag.std"       
"tbodyaccjerkmag.mean"      
"tbodyaccjerkmag.std"       
"tbodygyromag.mean"         
"tbodygyromag.std"         
"tbodygyrojerkmag.mean"     
"tbodygyrojerkmag.std"      
"fbodyacc.mean.x"           
"fbodyacc.mean.y"          
"fbodyacc.mean.z"           
"fbodyacc.std.x"            
"fbodyacc.std.y"            
"fbodyacc.std.z"           
"fbodyaccjerk.mean.x"       
"fbodyaccjerk.mean.y"       
"fbodyaccjerk.mean.z"       
"fbodyaccjerk.std.x"       
"fbodyaccjerk.std.y"        
"fbodyaccjerk.std.z"        
"fbodygyro.mean.x"          
"fbodygyro.mean.y"         
"fbodygyro.mean.z"          
"fbodygyro.std.x"           
"fbodygyro.std.y"           
"fbodygyro.std.z"          
"fbodyaccmag.mean"          
"fbodyaccmag.std"           
"fbodybodyaccjerkmag.mean"  
"fbodybodyaccjerkmag.std"  
"fbodybodygyromag.mean"     
"fbodybodygyromag.std"      
"fbodybodygyrojerkmag.mean"
"fbodybodygyrojerkmag.std"
