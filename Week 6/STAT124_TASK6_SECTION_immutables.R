# Members:
# Tuyogon, Ann
# Batac, John Kenneth
# Ignacio, Marc Shervin

####Question 1-----
x <- as.numeric(readline("What is the value of x?"))
# x <- -5
if(x == 0){
  cat(paste(x,"is zero"))
} else if(x < 0 ){
  cat(paste(x,"is negative"))
} else{
  cat(paste(x,"is positive"))
}


####Question 2-----
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


####Question 3-----
x <- as.numeric(readline("What is x?:"))
y <- as.numeric(readline("What is y?:"))
z <- as.numeric(readline("What is z?:"))
# [[1 2][1 3][2 3]]
# x <- 5
# y <- 10
# z <- 15

if(x > y){
  x = x + y
  y = x - y
  x = x - y
}
if(x > z){
  x = x + z
  z = x - z
  x = x - z
}
if(y > z){
  z = z + y
  y = z - y
  z = z - y
}
cat(paste("The largest number is", z))

####Question 4.1-----
userinp = as.numeric(readline("What days do you want master?:"))
if(userinp == 1){
  cat("Sunday")
}else if(userinp ==2){
  cat("Monday")
}else if(userinp ==3){
  cat("Tuesday")
}else if(userinp ==4){
  cat("Wednesday")
}else if(userinp ==5){
  cat("Thursday")
}else if(userinp ==6){
  cat("Friday")
}else if(userinp ==7){
  cat("Saturday")
}else {
  cat("Invalid INPUT!")
}


####Question 4.2-----
userinp = readline("What day do you want master?:")
result = switch(as.character(userinp),"1"="Sunday","2"="Monday", "3"="Tuesday", "4"="Wednesday","5"="Thursday","6"="Friday","7"="Saturday", stop("Invalid INPUT!"))
cat(result)

####Question 4.3-----
userinp = readline("What days do you want master?:")
cat(case_when(userinp == "1" ~ "Sunday",userinp =="2" ~ "Monday", 
              userinp == "3" ~ "Tuesday", userinp == "4" ~ "Wednesday", userinp =="5" ~ "Thursday",
              userinp == "6" ~ "Friday", userinp =="7" ~ "Saturday", TRUE ~ "Invalid INPUT!"))
