===========================================================================================
#COURSERA
#Getting & Cleaning Data - Project work
===========================================================================================

This document contains the descriptions of all the variables in their sequence of birth in run_analysis.R and the description of row and column names of the resulting dataset.

1.  xtraindata:		Dataset containing the observations of train folder(X_train.txt).
2.  ytraindata:		Data labels containing the activity labels coressponding to each row in xtraindata (y_train.txt).
3.  subtrain:		subject labels containing the subject number corresponding each row in xtraindata (subject_train.rxt).

4.  xtestdata:		Dataset containing the observations of test folder (X_test.txt).
5.  ytestdata:		Data labels containing the activity labels coressponding to each row in xtestdata (y_test.txt).
6.  subtest:		Subject labels containing the subject number corresponding each row in xtestdata (subject_test.rxt).

7.  data:		Combines the observations from test and train phases. (xtestdata & xtraindata)

8.  labels:		Data lables containing the descriptive variable names from features.txt

9.  req_label_no:	Numeric vector containing element number corresponding to variable names from labels that have "mean" and "std" as a part of the name.
10. req_label_name:	Character vector containing the variable name from labels that have "mean" and "std" as a part of the name. The first element corresponds to the descriptive row names, which will be explained later in the document.

11. req_row_names:	Character vector that represents the descriptive row names and follows the following nomenclature: 
			First part tells whether the subject belongs to test or train data.
			Second part tells us subject number as given by subject_test or subject_train.
			Third part tells us the activity.
			Each part is separated by "_".

12. result:		The dataset after using aggregate() to calculate the means of all the variables, grouped by req_row_names.



The result contains the following variables:

**Rows represented by rep_row_names above**

Test_1_Walking refers to the observartions taken when the Subject who was assigned 1 in Test phase was walking

**Columns are represented by req_label_name above**

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are:   

mean(): Mean value  
std(): Standard deviation  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:  

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  
