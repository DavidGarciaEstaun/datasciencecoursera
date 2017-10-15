complete <- function(directory, id = 1:332){
    
    dir<- list.files(directory, full.names = T)
    bindedData <- data.frame()
    
    for(i in id){
        temp <- read.csv(dir[i], header=TRUE)
        temp <- temp[complete.cases(temp),]
        bindedData <- rbind(bindedData, c(i,nrow(temp)))
    }

    x <- c("id", "nobs")
    colnames(bindedData) <- x
    bindedData
}

