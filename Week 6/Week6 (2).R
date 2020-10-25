a <- as.numeric(readline("What is a:"))
b <- as.numeric(readline("What is b:"))
c <- as.numeric(readline("What is c:"))

discriminant = (b^2 - (4*a*c))
if(discriminant < 0){
  cat("There is no real root")
}else if(discriminant ==0){
  Root = (-b)/(2*a)
  cat(round(Root,4))
}else{
  num1 = -b + sqrt(discriminant)
  num2 = -b - sqrt(discriminant)
  denom = 2*a
  Root1 = num1 / denom
  Root2 = num2 / denom
  cat(paste("The roots are", round(Root1,4),"and", round(Root2,4)))
  
}

