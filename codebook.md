#Data Collection

##Origin
All datas came from the Folder UCI-HAR-Dataset.

##Algorithm
The algorithm to create the Dataset provided in this project was created by an R script, and doing the following steps:
* Catch all name labels
* Catch all datas and associate with name labels previously captured
* In the dataset originated from X_(test|train).txt capture only the columns with "std" or "mean" in its column name (transformed_x)
* Transform all data that came from y_(test|train).txt into descriptive values according to the values in activity_label.txt (transformed_y)
* create a new column called status = test or train, wich value is based on the folder it is running (new_status)
* bind all transformed data by columns with bind_cols R function (transformed_y, transformed_x, new_status)

The steps above was runned twice, one for "test" folder and another for "train" folder, the data was merged, with bind_rows R function, and it was ready to be grouped by activity and was removed the status column (wich is not a numeric value), after that the *mean* according to activity was calculated and ready to be show.

Example:
![data example](images/calculated_data_example.png)