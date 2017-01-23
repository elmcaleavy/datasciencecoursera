complete <- function(directory, id = 1:332) {
        allfiles <- file.path(directory, list.files(directory))
        output <- data.frame(id = integer(), nobs = numeric())
        
        for (current_id in id) {
                file <- allfiles[current_id]
                data <- read.csv(file)
                nobs <- sum(complete.cases(data))
                newrow <- data.frame(id = current_id, nobs = nobs)
                output <- rbind(output, newrow)
                
        }
        output
}


