The main idea
=============

The main idea of this script is to prepare a tidy dataset of the "Human
Activity Recognition Using Smartphones Dataset" for further anlyses. The
selection of the included variables was based on the philosophy to
provide as much of the original dataset as possible to enable a large
variety of later analysis. So the main focus of this script lies in
tidying the dataset and carefully aggregating data where possible,
withiout loosing too much variables for later analysis.

Short Describtion of the script
===============================

Putten in the mainfolder the "run\_analysis.R" tidies the UCI HAR
Dataset. Therefor it extracts only the measurements with means and
standard derivations and creates a new Dataset that groups the average
of every variable for each activity and subject.

Descriptions for each variable can be found in the codebook.

How the code works
==================

The code loads the lables of the activities and variable names from the
original UCI HAR Dataset. After this it loads the values for the
variable-values, the activity-values and the participant-ids from the
original dataset. After that the code lables the variable accordingly to
the loaded original variable-names. That ensures descriptive variable
names. After that the dataset is subsetted to only include the variables
that describe means and standard derivations. Finally it combines the
variables with the acitivities (including the factor-labelings) and the
participants-ids.

This steps are executed respectivly for the data from the test-group
(Lines 2-19 in the code) and the train-group (Lines 21-35). After that the code
combines the two groups into one complete dataset (Lines 37-39).

Finally the code performs a group-comparison of the average of each
variable for each activity and each subject (Lines 41-45) and prints the
dataset (Lines 47-48).
