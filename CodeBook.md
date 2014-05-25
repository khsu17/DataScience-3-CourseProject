Code Book
=========

1. File Name
============
- tidyData.txt
- This file comes from the 'run_analysis.R' script.


2. File Properties
==================
- 180 obs. of  81 variables
- Variables Description
	- t: time domain signals
	- f: frequency domain signals
	- mean(): Mean value
	- std(): Standard deviation
	- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
	- X,Y,Z: 3-axial signals in the X, Y and Z directions


3. Transformations
==================
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 


4. Data Description
===================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


5. Variables Details
====================
- subject: Each number indicates 30 volunteers within an age bracket of 19-48 years.
	- int : 1:30
- activity.labels: Each person performed six activities wearing a smartphone on the waist.
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