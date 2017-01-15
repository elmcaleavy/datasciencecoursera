complete <- function(directory, id = 1:332) {
        filename <- paste (formatC(id, width = 3, format = "d", flag = "0"), ".csv", sep = "")
        path <- file.path(directory, filename)
        data <- lapply(path, read.csv)
        completedata <- lapply(data, complete.cases)
        truesum <- lapply (completedata, sum)
        nobs <- unlist(truesum)
        data.frame(id, nobs)
       
}


