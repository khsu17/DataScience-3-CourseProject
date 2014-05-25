Code Book
=========

1. File name
============
- tidyData.txt

2. File Properties
==================
- 180 obs. of  81 variables
- Except first 2 columns, all variables are 'MEAN' values of its name.
- Variables Description
	- t: time domain signals
	- f: frequency domain signals
	- mean(): Mean value
	- std(): Standard deviation
	- meanFreq(): Weighted average of the frequency components to obtain a mean frequency

3. Feature Selection
====================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

4. Transformations
==================


5. Variables Details
====================
- subject
	- int : 1:30
- activity.labels
	- WALKING
	- WALKING_UPSTAIRS
	- WALKING_DOWNSTAIRS
	- SITTING
	- STANDING
	- LAYING
- t.Body.Acc.mean().X
- t.Body.Acc.mean().Y
- t.Body.Acc.mean().Z
- t.Body.Acc.std().X
- t.Body.Acc.std().Y
- t.Body.Acc.std().Z
- t.Gravity.Acc.mean().X
- t.Gravity.Acc.mean().Y
- t.Gravity.Acc.mean().Z
- t.Gravity.Acc.std().X
- t.Gravity.Acc.std().Y
- t.Gravity.Acc.std().Z
- t.Body.AccJerk.mean().X
- t.Body.AccJerk.mean().Y
- t.Body.AccJerk.mean().Z
- t.Body.AccJerk.std().X
- t.Body.AccJerk.std().Y
- t.Body.AccJerk.std().Z
- t.Body.Gyro.mean().X
- t.Body.Gyro.mean().Y
- t.Body.Gyro.mean().Z
- t.Body.Gyro.std().X
- t.Body.Gyro.std().Y
- t.Body.Gyro.std().Z
- t.Body.GyroJerk.mean().X
- t.Body.GyroJerk.mean().Y
- t.Body.GyroJerk.mean().Z
- t.Body.GyroJerk.std().X
- t.Body.GyroJerk.std().Y
- t.Body.GyroJerk.std().Z
- t.Body.AccMag.mean()
- t.Body.AccMag.std()
- t.Gravity.AccMag.mean()
- t.Gravity.AccMag.std()
- t.Body.AccJerkMag.mean()
- t.Body.AccJerkMag.std()
- t.Body.GyroMag.mean()
- t.Body.GyroMag.std()
- t.Body.GyroJerkMag.mean()
- t.Body.GyroJerkMag.std()
- f.Body.Acc.mean().X
- f.Body.Acc.mean().Y
- f.Body.Acc.mean().Z
- f.Body.Acc.std().X
- f.Body.Acc.std().Y
- f.Body.Acc.std().Z
- f.Body.Acc.meanFreq().X
- f.Body.Acc.meanFreq().Y
- f.Body.Acc.meanFreq().Z
- f.Body.AccJerk.mean().X
- f.Body.AccJerk.mean().Y
- f.Body.AccJerk.mean().Z
- f.Body.AccJerk.std().X
- f.Body.AccJerk.std().Y
- f.Body.AccJerk.std().Z
- f.Body.AccJerk.meanFreq().X
- f.Body.AccJerk.meanFreq().Y
- f.Body.AccJerk.meanFreq().Z
- f.Body.Gyro.mean().X
- f.Body.Gyro.mean().Y
- f.Body.Gyro.mean().Z
- f.Body.Gyro.std().X
- f.Body.Gyro.std().Y
- f.Body.Gyro.std().Z
- f.Body.Gyro.meanFreq().X
- f.Body.Gyro.meanFreq().Y
- f.Body.Gyro.meanFreq().Z
- f.Body.AccMag.mean()
- f.Body.AccMag.std()
- f.Body.AccMag.meanFreq()
- f.Body.BodyAccJerkMag.mean()
- f.Body.BodyAccJerkMag.std()
- f.Body.BodyAccJerkMag.meanFreq()
- f.Body.BodyGyroMag.mean()
- f.Body.BodyGyroMag.std()
- f.Body.BodyGyroMag.meanFreq()
- f.Body.BodyGyroJerkMag.mean()
- f.Body.BodyGyroJerkMag.std()
- f.Body.BodyGyroJerkMag.meanFreq()	