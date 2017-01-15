pollutantmean <- function(directory, pollutant, id = 1:332) {
        filename <- paste (formatC(id, width = 3, format = "d", flag = "0"), ".csv", sep = "")
        path <- file.path(directory, filename)
        data <- lapply(path, read.csv)
        combineddata <- do.call(rbind, data)
        mean(combineddata[, pollutant], na.rm = TRUE)
        
}