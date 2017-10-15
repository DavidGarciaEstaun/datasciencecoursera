pollutantmean <- function(directory, pollutant, id = 1:332){
    dir<- list.files(directory, full.names = T)
    bindedData <- data.frame()
        
    for(i in id){

        bindedData <- rbind(bindedData, read.csv(dir[i], header=TRUE) )
    }
    mean(bindedData[,pollutant], na.rm = TRUE)
        
}


