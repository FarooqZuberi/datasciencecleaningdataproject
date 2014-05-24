## Code Book 

This dataset was extracted from Human Activity Recognition Using Smartphones Dataset.

###Human Activity Recognition Using Smartphones Dataset

The experiments was carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
*	tBodyAccXYZ
*	tGravityAccXYZ
*	tBodyAccJerkXYZ
*	tBodyGyroXYZ
*	tBodyGyroJerkXYZ
*	tBodyAccMag
*	tGravityAccMag
*	tBodyAccJerkMag
*	tBodyGyroMag
*	tBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
*	mean: Mean value
*	std: Standard deviation

### Feature Selection

The mean of these feature variables was calculated against each volunteer and activity. Test and Training data have been merged with their labels and subject identifier. The mean have been calculated over the subjects(who performed the experiments) and activites(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), for each variable mentioned above. The data would be used to analyse each variable for every subject and activity. Features have been renamed for easy naming convention. First feature is activity performed,and the second feature is the subject that performed that activity.

The complete list of variables of each feature variable are given below:

|S.No|     Feature Variables      |
|----|----------------------------|
| 1  | activity                   |
| 2  | subject                    |
| 3  | tBodyAccmeanX              |
| 4  | tBodyAccmeanY              |
| 5  | tBodyAccmeanZ              |
| 6  | tBodyAccstdX               |
| 7  | tBodyAccstdY               |
| 8  | tBodyAccstdZ               |
| 9  | tGravityAccmeanX           |
| 10 | tGravityAccmeanY           |
| 11 | tGravityAccmeanZ           |
| 12 | tGravityAccstdX            |
| 13 | tGravityAccstdY            |
| 14 | tGravityAccstdZ            |
| 15 | tBodyAccJerkmeanX          |
| 16 | tBodyAccJerkmeanY          |
| 17 | tBodyAccJerkmeanZ          |
| 18 | tBodyAccJerkstdX           |
| 19 | tBodyAccJerkstdY           |
| 20 | tBodyAccJerkstdZ           |
| 21 | tBodyGyromeanX             |
| 22 | tBodyGyromeanY             |
| 23 | tBodyGyromeanZ             |
| 24 | tBodyGyrostdX              |
| 25 | tBodyGyrostdY              |
| 26 | tBodyGyrostdZ              |
| 27 | tBodyGyroJerkmeanX         |
| 28 | tBodyGyroJerkmeanY         |
| 29 | tBodyGyroJerkmeanZ         |
| 30 | tBodyGyroJerkstdX          |
| 31 | tBodyGyroJerkstdY          |
| 32 | tBodyGyroJerkstdZ          |
| 33 | tBodyAccMagmean            |
| 34 | tBodyAccMagstd             |
| 35 | tGravityAccMagmean         |
| 36 | tGravityAccMagstd          |
| 37 | tBodyAccJerkMagmean        |
| 38 | tBodyAccJerkMagstd         |
| 39 | tBodyGyroMagmean           |
| 40 | tBodyGyroMagstd            |
| 41 | tBodyGyroJerkMagmean       |
| 42 | tBodyGyroJerkMagstd        |
| 43 | fBodyAccmeanX              |
| 44 | fBodyAccmeanY              |
| 45 | fBodyAccmeanZ              |
| 46 | fBodyAccstdX               |
| 47 | fBodyAccstdY               |
| 48 | fBodyAccstdZ               |
| 49 | fBodyAccJerkmeanX          |
| 50 | fBodyAccJerkmeanY          |
| 51 | fBodyAccJerkmeanZ          |
| 52 | fBodyAccJerkstdX           |
| 53 | fBodyAccJerkstdY           |
| 54 | fBodyAccJerkstdZ           |
| 55 | fBodyGyromeanX             |
| 56 | fBodyGyromeanY             |
| 57 | fBodyGyromeanZ             |
| 58 | fBodyGyrostdX              |
| 59 | fBodyGyrostdY              |
| 60 | fBodyGyrostdZ              |
| 61 | fBodyAccMagmean            |
| 62 | fBodyAccMagstd             |
| 63 | fBodyBodyAccJerkMagmean    |
| 64 | fBodyBodyAccJerkMagstd     |
| 65 | fBodyBodyGyroMagmean       |
| 66 | fBodyBodyGyroMagstd        |
| 67 | fBodyBodyGyroJerkMagmean   |
| 68 | fBodyBodyGyroJerkMagstd    |