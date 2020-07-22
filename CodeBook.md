# code Book
Every column from the original dataset that had `mean` or `std` in their name was extracted and averaged for every pair of subject and activity.
Their names were changed to reflect that.
All other columns from the original dataset were ignored.

## Columns
`subject` - identifier of a test subject that was performing activity. (same as original)
`activity` - activity that the subject performed (mapped to name using `activity_labels.txt`)

All the rest of the columns are means of respective original column where subject and activity were the same.
`mean-of-tBodyAcc-mean()-X`
`mean-of-tBodyAcc-mean()-Y`
`mean-of-tBodyAcc-mean()-Z`
`mean-of-tBodyAcc-std()-X`
`mean-of-tBodyAcc-std()-Y`
`mean-of-tBodyAcc-std()-Z`
`mean-of-tGravityAcc-mean()-X`
`mean-of-tGravityAcc-mean()-Y`
`mean-of-tGravityAcc-mean()-Z`
`mean-of-tGravityAcc-std()-X`
`mean-of-tGravityAcc-std()-Y`
`mean-of-tGravityAcc-std()-Z`
`mean-of-tBodyAccJerk-mean()-X`
`mean-of-tBodyAccJerk-mean()-Y`
`mean-of-tBodyAccJerk-mean()-Z`
`mean-of-tBodyAccJerk-std()-X`
`mean-of-tBodyAccJerk-std()-Y`
`mean-of-tBodyAccJerk-std()-Z`
`mean-of-tBodyGyro-mean()-X`
`mean-of-tBodyGyro-mean()-Y`
`mean-of-tBodyGyro-mean()-Z`
`mean-of-tBodyGyro-std()-X`
`mean-of-tBodyGyro-std()-Y`
`mean-of-tBodyGyro-std()-Z`
`mean-of-tBodyGyroJerk-mean()-X`
`mean-of-tBodyGyroJerk-mean()-Y`
`mean-of-tBodyGyroJerk-mean()-Z`
`mean-of-tBodyGyroJerk-std()-X`
`mean-of-tBodyGyroJerk-std()-Y`
`mean-of-tBodyGyroJerk-std()-Z`
`mean-of-tBodyAccMag-mean()`
`mean-of-tBodyAccMag-std()`
`mean-of-tGravityAccMag-mean()`
`mean-of-tGravityAccMag-std()`
`mean-of-tBodyAccJerkMag-mean()`
`mean-of-tBodyAccJerkMag-std()`
`mean-of-tBodyGyroMag-mean()`
`mean-of-tBodyGyroMag-std()`
`mean-of-tBodyGyroJerkMag-mean()`
`mean-of-tBodyGyroJerkMag-std()`
`mean-of-fBodyAcc-mean()-X`
`mean-of-fBodyAcc-mean()-Y`
`mean-of-fBodyAcc-mean()-Z`
`mean-of-fBodyAcc-std()-X`
`mean-of-fBodyAcc-std()-Y`
`mean-of-fBodyAcc-std()-Z`
`mean-of-fBodyAcc-meanFreq()-X`
`mean-of-fBodyAcc-meanFreq()-Y`
`mean-of-fBodyAcc-meanFreq()-Z`
`mean-of-fBodyAccJerk-mean()-X`
`mean-of-fBodyAccJerk-mean()-Y`
`mean-of-fBodyAccJerk-mean()-Z`
`mean-of-fBodyAccJerk-std()-X`
`mean-of-fBodyAccJerk-std()-Y`
`mean-of-fBodyAccJerk-std()-Z`
`mean-of-fBodyAccJerk-meanFreq()-X`
`mean-of-fBodyAccJerk-meanFreq()-Y`
`mean-of-fBodyAccJerk-meanFreq()-Z`
`mean-of-fBodyGyro-mean()-X`
`mean-of-fBodyGyro-mean()-Y`
`mean-of-fBodyGyro-mean()-Z`
`mean-of-fBodyGyro-std()-X`
`mean-of-fBodyGyro-std()-Y`
`mean-of-fBodyGyro-std()-Z`
`mean-of-fBodyGyro-meanFreq()-X`
`mean-of-fBodyGyro-meanFreq()-Y`
`mean-of-fBodyGyro-meanFreq()-Z`
`mean-of-fBodyAccMag-mean()`
`mean-of-fBodyAccMag-std()`
`mean-of-fBodyAccMag-meanFreq()`
`mean-of-fBodyBodyAccJerkMag-mean()`
`mean-of-fBodyBodyAccJerkMag-std()`
`mean-of-fBodyBodyAccJerkMag-meanFreq()`
`mean-of-fBodyBodyGyroMag-mean()`
`mean-of-fBodyBodyGyroMag-std()`
`mean-of-fBodyBodyGyroMag-meanFreq()`
`mean-of-fBodyBodyGyroJerkMag-mean()`
`mean-of-fBodyBodyGyroJerkMag-std()`
`mean-of-fBodyBodyGyroJerkMag-meanFreq()`