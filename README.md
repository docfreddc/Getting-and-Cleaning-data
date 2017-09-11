# Getting-and-Cleaning-data
Project for Getting and Cleaning data 
This repository contains one R script, titled "run_analysis.R"
It completes the following steps:
1. Load the column descriptions for the training and test data.
    This data is found in the file "features.txt"
          Contains two columns
              "V1", which contains the column number that it references
              "V2", which contains the description of information found in the column
2. Load the activity codes and labels from the file "activity_labels.txt"
    This file contains two columns
        "V1", contains the activity code (1 - 6)
        "V2", contains the activity labels
3.  Load the training data
    There are 3 files for this portion of the data
    "X_train.txt" contains 7352 observation with 563 variables of data readings
    "Y_train.txt" contains the activity code for each of the 7352 observations
    "subject_train.txt" contains the subject number for each of the 7352 observations
4.  Map activity labels to the activity code for the data found in "Y_train.txt"
5.  Load the test data
    There are 3 files for this portion of the data
    "X_test.txt" contains 2947 observation with 563 variables of data readings
    "Y_test.txt" contains the activity code for each of the 2947 observations
    "subject_test.txt" contains the subject number for each of the 2947 observations
6.  Map activity labels to the activity code for the data found in "Y_test.txt"
7.  Combine test and train data
      Row binds: X_train.txt with X_test.txt, Y_train.txt with Y_test.txt, and subject_train.txt with subject_test.txt
8.  Removes only the mean and std variable columns from the combined X dataframe
    This means only variables with mean or std in the description
    In addition, variables with meanFreq were excluded
9.  Add the subject numbers from the combined subject dataframe as a column to the combined X dataframe
10. Add the activity labels from the combined Y dataframe as a column to the combined X dataframe
11. Take the mean of all the variable columns by subject number and activity
