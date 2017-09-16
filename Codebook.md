This Project takes accelerometer data from Samsung Galaxy S smartphone that was collected by UCI and tidys it up for analysis.

The data was found in the following files
      'features_info.txt': Shows information about the variables used on the feature vector.
      'features.txt': List of all features.
      'activity_labels.txt': Links the class labels with their activity name. 
      'X_train.txt': Training set.
      'y_train.txt': Training activity codes. Its range is from 1 to 6.
      'X_test.txt': Test set.
      'y_test.txt': Test activity codes. Its range is from 1 to 6.
      'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
      'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
As described in the 'readme.md' file, the X_train.txt and X_test.txt were combined for this project.
The following variables were subset out of the original file for use in the project.
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyAccMag-mean()
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean()
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()

As described in the 'readme.md' file, the subject_train.txt and subject_test.txt were combined for this project and added on as a column to the end of the dataframe 
that contains the above variables.

As decribed in the 'readme.md' file, the y_train.txt and y_test.txt were combined for this project.
Activities labels were mapped to the y_train/test combo file using the following mapping
1 Walking
2 Walking_Upstairs
3 Walking_Downstairs
4 Sitting
5 Standing
6 Laying

These activity labels were added as a column to the end of the dataframe containing the activity data and subject data.

To finish the tidy data requirements,the dataframe was aggregated on subject and activity using the mean function.
The resulting dataframe was written out to a text file.
