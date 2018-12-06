# Coursera - Getting And Cleaning Data


## R packages

We must have All the packages below to run the scripts.

* plyr
* dplyr

## Files

In order to the configurations below you'll need to set the working directory as this current
directory

```
setwd('<path-to-this-directory>')

# just an example
# setwd('~/courses/datascience/coursera-getting-and-cleaning-data')
```


The answer of the question in topic 4 is in the 'exercise1.R' file. just do the following command:

```
source('exercise1.R')
answer_1()
```

with the exercise in topic 5 you need to do in a similar way:

```
source('run_analysis.R')
desired_answer()
```

All the functions retrieve a data frame, you can store the result in a variable if you desire

## Codebook

The code book is available at "codebook.md"

## Algorithm
The algorithm to create the Dataset provided in this project was created by an R script, and doing the following steps:
* Catch all name labels
* Catch all datas and associate with name labels previously captured
* In the dataset originated from X_(test|train).txt capture only the columns with "std" or "mean" in its column name (transformed_x)
* Transform all data that came from y_(test|train).txt into descriptive values according to the values in activity_label.txt (transformed_y)
* create a new column called status = test or train, wich value is based on the folder it is running (new_status)
* bind all transformed data by columns with bind_cols R function (transformed_y, transformed_x, new_status)

The steps above was runned twice, one for "test" folder and another for "train" folder, the data was merged, with bind_rows R function, and it was ready to be grouped by activity and was removed the status column (wich is not a numeric value), after that the *mean* according to activity and person is calculated and ready to be show.

Example:
![data example](images/calculated_data_example.png)
