source('catching_data.R')
answer_1 <- function() {
    testData <- catch_data()
    trainData <- catch_data(src = "train")

    bind_rows(testData, trainData)
}