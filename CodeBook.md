# CodeBook for the Dataset tidy_data.txt
Code Book for Variables Used in Analysis of Human Activity Using Samsung Dataset

Analysis has been performed on the combined training and test dataset collected from a group of 30 volunteers. Each volunteer (subject) performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone Samsung Galaxy S II) on the waist.

The dataset provides the average of each record (mean, std, meanFreq) for each volunteer (subject) and each activity. 

subject: describes volunteer participated in the study (1-30)
activity: describes activities performed by each subject

Variables for each subject and activity (normalized and bounded within [-1,1]):

prefix 't' to denote time 
prefix 'f' to denote frequency

'Acc' data from the accelerometer
'Gyro' data from the gyroscope

'Body' data from body signals
'Gravity' data from gravity signals

'Jerk' data from Jerk signals
'Mag' labels the magnitude of signals using Euclidean norm

'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions

'mean': mean value
'std': standard deviation
'meanFreq': weighted average of the frequency components to obtain a mean frequency

tBodyAcc_mean_XYZ
tBodyAcc_std_XYZ
tGravityAcc_mean_XYZ
tGravityAcc_std_XYZ
tBodyAccJerk_mean_XYZ
tBodyAccJerk_std_XYZ
tBodyGyro_mean_XYZ
tBodyGyro_std_XYZ
tBodyGyroJerk_mean_XYZ
tBodyGyroJerk_std_XYZ
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
fBodyAcc_mean_XYZ
fBodyAcc_std_XYZ
fBodyAcc_meanFreq_XYZ
fBodyAccJerk_mean_XYZ
fBodyAccJerk_std_XYZ
fBodyAccJerk_meanFreq_XYZ
fBodyGyro_mean_XYZ
fBodyGyro_std_XYZ
fBodyGyro_meanFreq_XYZ
fBodyAccMag_mean
fBodyAccMag_std
fBodyAccMag_meanFreq
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyAccJerkMag_meanFreq
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroMag_meanFreq
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std
fBodyBodyGyroJerkMag_meanFreq












