pollutantmean <- function (directory, pollutant, id = 1:332) {
        allfiles <- file.path(directory, list.files(directory))
        collector <- data.frame(date = factor(), sulfate = numeric(), nitrate = numeric(), id = integer())
        for (file in allfiles[id]) {
               collector <- rbind(collector, read.csv(file))
        }
        mean (collector[, pollutant], na.rm = TRUE)

}

