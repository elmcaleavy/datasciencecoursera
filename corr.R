corr <- function(directory, threshold = 0) {
        id <- 1:332
        allfiles <- file.path(directory, list.files(directory))
        correlations <- numeric()
        
        for (current_id in id) {
                file <- allfiles[current_id]
                data <- read.csv(file)
                nobs <- sum(complete.cases(data))
                if (nobs <= threshold) next()
                sulfate <- data$"sulfate"
                nitrate <- data$"nitrate"
                cor_result <- cor(sulfate, nitrate, "complete.obs")
                correlations <- c(correlations, cor_result)
        }
        correlations
}
