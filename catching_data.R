catch_data <- function(src = 'test') {
    baseDataPath <- "UCI-HAR-Dataset"
    tableHeaders <- read.table(file.path(baseDataPath, "features.txt"))
    headers <- tableHeaders[, 2]
    desirableIndexes <- grep('std|mean', headers)
    number_activity <- read.table(file.path(baseDataPath, 'activity_labels.txt'))

    data <- read.table(file.path(baseDataPath, src, paste('X_', src, '.txt', sep = '')))
    peopleData <- read.table(file.path(baseDataPath, src, paste('subject_', src ,'.txt', sep = '')))
    activityData <- read.table(file.path(baseDataPath, src, paste('y_', src, '.txt', sep = '')))

    names(data) <- headers
    names(peopleData) <- c('person')
    names(activityData) <- c('activity')

    activityData <- activityData %>% mutate(activity = number_activity[activity, 2])

    dataThatMatters <- data[, desirableIndexes]
    dataThatMatters <- bind_cols(peopleData, activityData, dataThatMatters)
    dataThatMatters <- dataThatMatters %>% mutate(status = src)
    dataThatMatters
}