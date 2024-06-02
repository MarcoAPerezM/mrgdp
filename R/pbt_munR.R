#' Filter Municipal data from Economic Census
#'
#' This function filter municipal gross total product data from economic census
#'
#' @param infile Path to the input file
#' @return A data.frame of the infile
#' @export
#'
pbt_mun <- function(data=x){
  data <- data[,1:6]
  data <- as.data.frame(data)
  data <- data[is.na(data[,4]), ]
  data <- data[is.na(data[,3]), ]
  data[,2]<- as.numeric(data[,2])
  nmun<-max(data[,2], na.rm = TRUE)
  data <- data[data[,2] %in% 1:nmun, ]
  data <- data[,c(1,2,6)]
}
