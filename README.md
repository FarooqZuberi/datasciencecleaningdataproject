## Read Me

### Assumptions:

* The given data set is unzipped and available in working directly, If this condition is not matched script will be stopped with an error message.
* All the files and folder names in the zipped folders are hardcoded and it is expected that they will not be changed.
* No library has been imported in the script. It is expected that all commonly used libraries are already loaded into the environment.

### What this script does

* It reads the features from training data and testing data and merges them.
* It reads the labels and subjects for training and testing data and merges them.
* It merges the features subjects and the activities
* reads feature's name and assign them to the table
* subset all columns that contain "means()" and "std()" along with respective labels and subjects.
* Replace the names of the activities in the data by their identifiers
* calculate the means of that data over factors activity and subjects
* write that data to a file named tidydata.txt


### Steps to run the script

* Unzip the data file in working directory, downloaded from the link(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* Place the run_analysis.R file in working directory
* use source command to run the script
* The script will generate a tidydata.txt file which is the required output