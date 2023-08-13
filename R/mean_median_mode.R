mean <- function(data)
{
  sum <-sum(data)
  count <- length(data)
  mean_value <- sum/count
  return(mean_value)
}

median <- function(data)
{
  sorted <- sort(data)
  n <- length(data)
  if(n%%2 ==0){
    median_value <- (sorted[n/2]+sorted[(n/2)+1])/2
  }else{
    median_value <- (sorted[(n+1)/2])
  }
  return(median_value)
}

mode <- function(data)
{
  frequencies <- table(data)
  max_frequency <- max(frequencies)
  modes <- as.numeric(names(frequencies[frequencies==max_frequency]))
  return(modes)
}

numbers <- c(1,2,3,4,5,5,6,7,8,9)
cat("The mean is",mean(numbers),"\n")
cat("The median is",median(numbers),"\n")
cat("The mode is",mode(numbers),"\n")









