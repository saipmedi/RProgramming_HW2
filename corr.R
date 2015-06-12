source("complete.R")
corr<-function(directory,threshold=0){
    #indexing file names as list,
    dirs <- as.character(list.files(directory)) 
    paths <- paste(directory, dirs, sep="")
    
    for(i in 1:332){
        if(nrow(complete.cases(read.csv(paths[i]))) >= threshold) {
            #read files having complete entries 
            #then correlation can be done bc matching # of vals
            sample <- complete.cases(read.csv(paths[i]))
            correl <- c(correl, cor(sample$nitrate, sample$sulfate))
        }
    }
    return (correl)
}  
  
  
  
  
