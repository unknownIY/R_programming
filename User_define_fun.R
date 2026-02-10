dd <- matrix(1:6,nrow = 2,ncol = 3)
dd
dd[2,3]

#sum of three num
sum_t <- function(a,b,c){
  return(a+b+c)
}
sum_t(4,5,3)

#return Avg of numbers
avg_num <- function(a,b,c,d){
  return((a+b+c+d)/4)
}
avg_num(5,7,8,6)

#return biggest number
mymax <- function(a, b) {
  if (a > b) {
    return(a)
  } else {
    return(b)
  }
}
mymax(5,6)


#retunr Minimum value
mymin <- function() {
  a <- as.numeric(readline("Enter the first number: "))
  b <- as.numeric(readline("Enter the second number: "))
  c <- as.numeric(readline("Enter the third number: "))
  
  result <- min(a, b, c)
  cat("The Minimum value is:", result)
}

mymin()





