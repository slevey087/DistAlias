p <- function(distribution){
  match.fun(paste("d",distribution, sep=""))
}

cdf <- function(distribution){
  match.fun(paste("p", distribution, sep=""))
}

quant <- function(distribution){
  match.fun(paste("q", distribution, sep=""))
}

random <- function(distribution){
  match.fun(paste("r", distribution, sep=""))
}