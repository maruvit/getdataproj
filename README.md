===========================================================================================
#COURSERA
#Getting & Cleaning Data - Project work
===========================================================================================
##Summary of Data set

This assignment used data from UCI Machine Learning Repository.

The data corresponds to *Human Activity Recognition Using Smartphones Data Set*

Activities of 30 volunteers were monitored and the recordings from the embedded accelerometer and gyroscope of their smartphone were recorded. 
The activity was also monitored using a video camera and activity corresponding to the recordings were noted.

Activities were classified into:

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING


The data was split into testing and training data containing 70% and 30% of the readings.

===========================================================================================
#Problem Statement

Create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average
of each variable for each activity and each subject.

==============================================================================================

#Approach
I took statement number 5 as the objective for the project, and the approach may not be sequential as per the above statements. All the 5 objectives would be evenually acheived. 
Code has been written with comments and hence would be easy to understand. 

Set the working directory to the unzipped file containing the UCI HAR Dataset

1.	i.  Read the train and test datasets. Each containing X (X_train & X_test) - Dataset, Y - Activity Labels and Subject - Subject labels.  
	ii. Comine the two datasets.  

2. 	i.  Read the features.txt and check for mean and std in the names of variables. If they are present noted down the occurance and the descriptive name of the varaible.  
	ii. Saved only the required columns in a new dataset as a subset of combined dataset that contains only the required columns.  

3.	i.  Converted the Activity Labels into descriptive names. E.g. Check if its 1, and convert into "Walking" and so on.  
	ii. Created the descriptive row names that combine the subject labels and descriptive activity labels. E.g. Test_1_Walking refers observations taken when Subject 1 from Test data while walking etc.  

5. 	i.  Calculated mean for all the variables grouped by the descriptive row names.  
	ii. The dataset containing 180 variables is created.  

4.	i.  Added a column name for first column containing the grouped by variable before all the column names noted at 2.i.  
	ii. Added the descriptive required column names the above dataset.  

Used write.table() to create a new text file named "Tidy_UCIHAR_Means.txt" in the working directory and uploaded the same.