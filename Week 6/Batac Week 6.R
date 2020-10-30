#BATACCCCCC

#### Question 1----
x <- -5
if (x<0){
  cat(x, "is negative")
} else if (x>0){
  cat(x, "is postive")
} else {
  cat(x, "is neither postive or negative")
}

####Question 2----
a <- 1
b <- 5
c <- 1
discriminant <- (b^2)-(4*a*c)
root1 <- (-b+(discriminant^(1/2)))/2
root2 <- (-b-(discriminant^(1/2)))/2
if (discriminant>0) {
  cat("The roots are", root1, "and", root2)
}else if(discriminant==0){
  cat("The root is", root1)
}else {message("There is no root")}

####Question 3
x <- 20
y <- 10
z <- 1
if (x>y){
  temp = y
  y = x
  x = temp}
if (x>z){
  temp = z
  z = x
  x = temp}
if(y>z){
  temp = z
  z = y
  y = temp}
cat("The largest number is", z)

#### Question 4----
#a
x <- 3.0
if (x==1){
  cat("Sunday")
} else if (x==2){
  cat("Monday")
} else if (x==3){
  cat("Tuesday")
} else if (x==4){
  cat("Wednesday")
} else if (x==5){
  cat("Thursday")
} else if (x==6){
  cat("Friday")
} else if (x==7){
  cat("Saturday")
} else {cat("Invalid input")}

#b
x <- 3L
Day = switch(as.character(x), 
       "1" = "Sunday",
       "2" = "Monday",
       "3" = "Tuesday",
       "4" = "Wednesday",
       "5" = "Thursday",
       "6" = "Friday",
       "7" ="Saturday",
       stop("Invalid input!"))
cat(Day)

#c
x <- 3
Day <- case_when(x == 1 ~ "Sunday",
          x == 2 ~ "Monday",
          x == 3 ~ "Tuesday",
          x == 4 ~ "Wednesday",
          x == 5 ~ "Thursday",
          x == 6 ~ "Friday",
          x == 7 ~ "Saturday",
          TRUE ~ "Invalid input!")
cat(Day)