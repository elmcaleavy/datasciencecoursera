best <- function(state, outcome) {
        
        ## Read all data and set outcome argument to col number 
        all_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character", na.strings = "Not Available", stringsAsFactors = FALSE)
        outcomes <- c("heart attack"=11, "heart failure"=17, "pneumonia"=23)
        use_data <- all_data[, c(2,7,outcomes[outcome])]
        final_data <- subset(use_data, State == state)
        
        
        ## Check that state and outcome are valid
        if("outcome" %in% outcomes == FALSE & "state" %in% c(unique(all_data$State)) == FALSE)
        {stop("invalid outcome and state")}
        
        else if ("outcome" %in% outcomes == FALSE) {
                stop("invalid outcome")    
        }
        
        else if ("state" %in% c(unique(all_data$State)) == FALSE) {
                stop("invalid state")
                
        }
        
        ## Read outcome data
        
      
                
                
                

                ## How do I do this same thing for states without writing out each state? 
                
             
       
        ## Return hospital name in that state with lowest 30-day death
        ## rate

}