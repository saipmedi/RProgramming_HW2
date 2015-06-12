
pollutantmean<-function(directory,pollutant,id=1:332){
    #use grep to search for "chars" in the second argument.
    #if logic passes, paste the directory at end of working directory
    
    if(grep("specdata", directory) == TRUE) {
    directory <- ("./specdata/")} 
    
    #initialize data frame
    dat<-c() 
    
    #indexing file names as list,
    dirs <- as.character(list.files(directory)) 
    paths <- paste(directory, dirs, sep="")
    
    #for each id, use the index list to add that path
    for(i in id){
        instance<-read.csv(paths[i])
        datafull<-list.files(directory,full.names=TRUE)
        #dat2<-data.frame()creatingdataframetakestoolong!
        pollutant
        
        #use na.rm() or is.na to subset
        na_remove<-instance[!is.na(instance[,pollutant]),pollutant]
        dat<-c(dat,na_remove)
        #dat2<-rbind(dat,read.csv(datafull[i]))creatingdataframetakestoolong!
    } 
    
    mean(dat)
  
}