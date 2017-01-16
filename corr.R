corr <- function (directory, threshold = 0) {
        
        ## assigns complete cases function output to new variable completecases
        completecases <- complete(directory, 1:332) 
        
        ## returns logical vector containing True/False whether nobs are above or below threshold
        filteredcases <- completecases$nobs > threshold 
        
        ## returns subset of complete cases, filters by row (using filteredcases)
        thresholdids <- completecases[filteredcases, ]$id 
        
        ## creates names of csv files to be loaded
        filename <- paste (formatC(thresholdids, width = 3, format = "d", flag = "0"), ".csv", sep = "")
        
        ## creates the path in the director "specdata" to the individual files 
        path <- file.path(directory, filename)
        
        ## using lapply this line reads all the files we identified in the path variable 
        data <- lapply(path, read.csv)
        
        ## creates list of vectors as opposed to list of data tables 
        sulfates <- lapply(data, function(x){x$sulfate})
        
        ## creates list of vectors as opposed to list of data tables 
        nitrates <- lapply(data, function(x){x$nitrate})
        
        ## applies cor function sulfates and nitrates 
        mapply(cor, sulfates, nitrates, "complete.obs")
        
}
