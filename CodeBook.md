---
title: "CodeBook"
output: html_document
---

### Code Book for Getting and Cleaning Data Project

##About the Data
This data is a cleaned tidy data coming from a dataset collected from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

The time domain signals ("time") were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

The acceleration signal was then separated into body and gravity acceleration signals  using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals . The magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

The frequency domain a collected using Fast Fourier Transform.


##Variables

- `subject`: the subject id
- `activity`: the activity that the subject is take data on

- `timeBodyAccelerometerMeanX`, 
   `timeBodyAccelerometerMeanY`, 
   `timeBodyAccelerometerMeanZ`,
   `timeBodyAccelerometerStandardDeviationX`,
	 `timeBodyAccelerometerStandardDeviationY`,
	 `timeBodyAccelerometerStandardDeviationZ`:
   the average and standard deviation time domain of body acceleration in x, y, z direction
	 
- `timeGravityAccelerometerMeanX`,
	 `timeGravityAccelerometerMeanY`,
	 `timeGravityAccelerometerMeanZ`,
	 `timeGravityAccelerometerStandardDeviationX`,
	 `timeGravityAccelerometerStandardDeviationY`,
	 `timeGravityAccelerometerStandardDeviationZ`:
	 the average and standard deviation time domain of gravity acceleration in x, y, z direction
	 
- `timeBodyAccelerometerJerkMeanX`,
	 `timeBodyAccelerometerJerkMeanY`,
	 `timeBodyAccelerometerJerkMeanZ`,
	 `timeBodyAccelerometerJerkStandardDeviationX`,
	 `timeBodyAccelerometerJerkStandardDeviationY`,
	 `timeBodyAccelerometerJerkStandardDeviationZ`:
	 the average and standard deviation time domain of body acceleration jerk in x, y, z direction
	 
- `timeBodyGyroscopeMeanX`,
	 `timeBodyGyroscopeMeanY`,
	 `timeBodyGyroscopeMeanZ`,
	 `timeBodyGyroscopeStandardDeviationX`,
	 `timeBodyGyroscopeStandardDeviationY`,
	 `timeBodyGyroscopeStandardDeviationZ`:
	 the average and standard deviation time domain of body angular velocity in x, y, z direction
	  
- `timeBodyGyroscopeJerkMeanX`,
	  `timeBodyGyroscopeJerkMeanY`,
	  `timeBodyGyroscopeJerkMeanZ`,
	  `timeBodyGyroscopeJerkStandardDeviationX`,
	  `timeBodyGyroscopeJerkStandardDeviationY`,
	  `timeBodyGyroscopeJerkStandardDeviationZ`:
	  the average and standard deviation time domain of body angular velocity jerk in x, y, z direction
	  
- `timeBodyAccelerometerMagnitudeMean`,
	`timeBodyAccelerometerMagnitudeStandardDeviation`:
	the average and standard deviation time domain of body acceleration magnitude in x, y, z direction

-  `timeGravityAccelerometerMagnitudeMean`,
	 `timeGravityAccelerometerMagnitudeStandardDeviation`:
	 the average and standard deviation time domain of gravity acceleration magnitude in x, y, z direction
	 

- `timeBodyAccelerometerJerkMagnitudeMean`,
	 `timeBodyAccelerometerJerkMagnitudeStandardDeviation`:
	 the average and standard deviation time domain of body acceleration jerk in x, y, z direction
	 


-  `timeBodyGyroscopeMagnitudeMean`,
	 `timeBodyGyroscopeMagnitudeStandardDeviation`:
	 the average and standard deviation time domain of body angular velocity in x, y, z direction

-  `timeBodyGyroscopeJerkMagnitudeMean`,
	 `timeBodyGyroscopeJerkMagnitudeStandardDeviation`:
	 the average and standard deviation time domain of body angular velocity jerk in x, y, z direction


- `frequencyDomainBodyAccelerometerMeanX`,
	 `frequencyDomainBodyAccelerometerMeanY`,
	 `frequencyDomainBodyAccelerometerMeanZ`,
	 `frequencyDomainBodyAccelerometerStandardDeviationX`,
	 `frequencyDomainBodyAccelerometerStandardDeviationY`,
	 `frequencyDomainBodyAccelerometerStandardDeviationZ`:
	 average frequency domain and Standard deviation of body acceleration in the X, Y and Z directions

- `frequencyDomainBodyAccelerometerMeanFrequencyX`,
	 `frequencyDomainBodyAccelerometerMeanFrequencyY`,
	 `frequencyDomainBodyAccelerometerMeanFrequencyZ`:
	 average frequency of the frequency domain and Standard deviation of body acceleration in the X, Y and Z directions


-  `frequencyDomainBodyAccelerometerJerkMeanX`,
	 `frequencyDomainBodyAccelerometerJerkMeanY`,
	 `frequencyDomainBodyAccelerometerJerkMeanZ`,
	 `frequencyDomainBodyAccelerometerJerkStandardDeviationX`,
	 `frequencyDomainBodyAccelerometerJerkStandardDeviationY`,
	 `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`:
   average frequency domain and Standard deviation of body acceleration jerk in the X, Y and Z directions:

-  `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`,
	 `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`,
	 `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`:
	 average frequency of the frequency domain and Standard deviation of body acceleration jerk in the X, Y and Z directions

-  `frequencyDomainBodyGyroscopeMeanX`,
	 `frequencyDomainBodyGyroscopeMeanY`,
	 `frequencyDomainBodyGyroscopeMeanZ`,
	 `frequencyDomainBodyGyroscopeStandardDeviationX`,
	 `frequencyDomainBodyGyroscopeStandardDeviationY`,
	 `frequencyDomainBodyGyroscopeStandardDeviationZ`:
	 the average and standard deviation frequency domain of body angular velocity in x, y, z direction



- `frequencyDomainBodyGyroscopeMeanFrequencyX`,
	 `frequencyDomainBodyGyroscopeMeanFrequencyY`,
	 `frequencyDomainBodyGyroscopeMeanFrequencyZ`:
average frequency of the frequency domain and Standard deviation of body acceleration jerk in the X, Y and Z directions


-  `frequencyDomainBodyAccelerometerMagnitudeMean`,
	 `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`,
	 `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`:
	 average, standard deviation and mean frequency of frequency domain of body acceleration magnitude in x, y, z direction

-  `frequencyDomainBodyAccelerometerJerkMagnitudeMean`,
	 `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`,
	 `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`:
	 average, standard deviation and mean frequency of frequency domain of body acceleration jerk magnitude in x, y, z direction

- `frequencyDomainBodyGyroscopeMagnitudeMean`,
	 `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`,
	 `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`:
  average, standard deviation and mean frequency of frequency domain of body angular velocity in x, y, z direction

-  `frequencyDomainBodyGyroscopeJerkMagnitudeMean`,
	 `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`,
	 `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`:
	 average, standard deviation and mean frequency of frequency domain of body angular velocity magnitude in x, y, z direction

##Transformation Steps
- Download and unzip the zipfile.
- Read "subject_train.txt", "X_train.txt", "y_train.txt" and combine them.
- Read "subject_test.txt", "X_test.txt", "y_test.txt" and combine them.
- Read "features.txt" and "activity_labels.txt".
- Rename the column of "activity_labels.txt" so they are readable.
- Combine the train and test data frame by rows to a big dataset "activity.data".
- Merge "activity_labels.txt" and "activity.data" by "activityId".
- Select only the means and standard deviations.
- Group up variables by subjects and activities and take the mean of each group.
- Rename columns so they are readable.
- write the dataframe out to "tidy_data.txt"