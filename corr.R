corr <- function(directory, threshold=0){
    
    dir<- list.files(directory, full.names = T)
    cr <- c()

    for(i in 1:length(dir)){
        temp <- read.csv(dir[i], header=TRUE)
        temp <- temp[complete.cases(temp),]
        
        if(nrow(temp)>threshold){
            cr <- c(cr, cor(temp$nitrate, temp$sulfate))
        }
    }
    cr    
}





