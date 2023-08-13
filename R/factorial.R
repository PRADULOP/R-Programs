factorial <- function(n)
{
  if(n==0 || n==1){
    return(1)
  }else
  {
    return(n * factorial(n-1))
  }
}
n <- as.numeric(readline("Enter the number:"))
result <- factorial(n)
cat("The factorial of",n,"is",result)   
