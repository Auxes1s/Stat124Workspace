# Write an R Program that evaluates and prints whether the number is positive or negative. 
#You may have to use functions such as message() or cat(). (5 pts)

# Sample input: x <- -5
# Sample output: -5 is negative

x <- as.numeric(readline("What is the value of x?"))
if(x == 0){
  cat(paste(x,"is zero"))
} else if(x < 0 ){
  cat(paste(x,"is negative"))
} else{
  cat(paste(x,"is positive"))
}