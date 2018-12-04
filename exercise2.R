source('exercise1.R')
answer_2 <- function() {
    middle_data <- answer_1()
    middle_data <- middle_data %>%
        select(activity:`fBodyBodyGyroJerkMag-meanFreq()`) %>%
        group_by(activity) %>%
        summarise_all(funs(mean))

    middle_data
}