complete <- function(directory, id) {
    #initialize nobs vector and resulting DF  
    nobs <- vector()
    DF<-c()
    #for loop has to be changed to take in variable entry of 25:40
    for (i in 1:length(id)) {
        #indexing file names as list,
        dirs <- as.character(list.files(directory)) 
        paths <- paste(directory, dirs, sep="")   
        #read instance of data
        instance <- c(read.csv(paths[i])) 
        #?complete.cases() sum the result of available values
        nobs[i] <- sum(complete.cases(instance))
    } 
    
    DF <- data.frame(cbind(id,nobs))   
    return(DF)
}