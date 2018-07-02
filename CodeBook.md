# Getting and Cleaning Data Project CodeBook

## Raw Data


The data used in this project can be found from the following.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A detailed descriptionof the data set can be found here.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

### Units

 1. The units for acceleration signal from the smartphone accelerometer is in standard gravity 'g'.
 2. The unit for angular velocity vector is radians/second. The angular velocity vector is measured by the gyroscope for each window sample.

## Data manipulation

The subject ID, activity and measurments are merged into for both train and test data sets. And the two data sets were combined into a new data set "==mergedData==".
Only the measurements on the mean and standard deviation for each measurement are extracted to "activityMeanAndStd".
From "activityMeanAndStd", a second independent tidy data set is created with the average of each variable for each activity and each subject, and saved into "tidyData.txt". 

### Variables in tidyData.txt

subject: ID of the voluteers
activity: Meaningful activity label.

The rest are the average of each variable for each activity and each subject. They are measurements
"tBodyAccmeanX"   
"tBodyAccmeanY"   
"tBodyAccmeanZ"   
"tBodyAccstdX"   
"tBodyAccstdY"   
"tBodyAccstdZ"   
"tGravityAccmeanX"   
"tGravityAccmeanY"   
"tGravityAccmeanZ"   
"tGravityAccstdX"   
"tGravityAccstdY"  
 "tGravityAccstdZ"   
 "tBodyAccJerkmeanX"   
 "tBodyAccJerkmeanY"   
 "tBodyAccJerkmeanZ"   
 "tBodyAccJerkstdX"   
 "tBodyAccJerkstdY"   
 "tBodyAccJerkstdZ"   
 "tBodyGyromeanX"   
 "tBodyGyromeanY"   
 "tBodyGyromeanZ"   
 "tBodyGyrostdX"   
 "tBodyGyrostdY"   
 "tBodyGyrostdZ"   
 "tBodyGyroJerkmeanX"   
 "tBodyGyroJerkmeanY"   
 "tBodyGyroJerkmeanZ"   
 "tBodyGyroJerkstdX"   
 "tBodyGyroJerkstdY"   
 "tBodyGyroJerkstdZ"   
 "tBodyAccMagmean"   
 "tBodyAccMagstd"   
 "tGravityAccMagmean"   
 "tGravityAccMagstd"   
 "tBodyAccJerkMagmean"   
 "tBodyAccJerkMagstd"   
 "tBodyGyroMagmean"   
 "tBodyGyroMagstd"   
 "tBodyGyroJerkMagmean"   
 "tBodyGyroJerkMagstd"   
 "fBodyAccmeanX"   
 "fBodyAccmeanY"   
 "fBodyAccmeanZ"   
 "fBodyAccstdX"   
 "fBodyAccstdY"   
 "fBodyAccstdZ"   
 "fBodyAccmeanFreqX"   
 "fBodyAccmeanFreqY"   
 "fBodyAccmeanFreqZ"   
 "fBodyAccJerkmeanX"   
 "fBodyAccJerkmeanY"   
 "fBodyAccJerkmeanZ"   
 "fBodyAccJerkstdX"   
 "fBodyAccJerkstdY"   
 "fBodyAccJerkstdZ"   
 "fBodyAccJerkmeanFreqX"   
 "fBodyAccJerkmeanFreqY"   
 "fBodyAccJerkmeanFreqZ"   
 "fBodyGyromeanX"   
 "fBodyGyromeanY"   
 "fBodyGyromeanZ"   
 "fBodyGyrostdX"   
 "fBodyGyrostdY"   
 "fBodyGyrostdZ"   
 "fBodyGyromeanFreqX"   
 "fBodyGyromeanFreqY"   
 "fBodyGyromeanFreqZ"   
 "fBodyAccMagmean"   
 "fBodyAccMagstd"   
 "fBodyAccMagmeanFreq"   
 "fBodyBodyAccJerkMagmean"   
 "fBodyBodyAccJerkMagstd"   
 "fBodyBodyAccJerkMagmeanFreq"   
 "fBodyBodyGyroMagmean"   
 "fBodyBodyGyroMagstd"   
 "fBodyBodyGyroMagmeanFreq"   
 "fBodyBodyGyroJerkMagmean"   
 "fBodyBodyGyroJerkMagstd"   
 "fBodyBodyGyroJerkMagmeanFreq"
 
 