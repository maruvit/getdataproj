===========================================================================================
#COURSERA
#Getting & Cleaning Data - Project work
===========================================================================================

This document contains the descriptions of all the variables in their sequence of birth in run_analysis.R

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