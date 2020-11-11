# Members:
# Tuyogon, Ann
# Batac, John Kenneth
# Ignacio, Marc Shervin

#Question 1 ----

#Set seed for uniformity of answer
set.seed(124)

#Initialize variables
X <- matrix(runif(100000),1000,100); z <- rep(0,1000)

#Take the duration using the given, apply() function, and rowSums()
durationA = system.time(for(i in 1:1000){
  for(j in 1:100){
    z[i] <- z[i] + X[i,j]
  }
})
durationB = system.time(apply(X,1,sum))
durationC = system.time(rowSums(X))

#Output results
message("For loop")
print(durationA)
message("Using apply()")
print(durationB)
message("Using rowSums()")
print(durationC)
message("Are they identical?", identical(z,b,c))


#Question 2 ----
#Initiate seed and given variables
set.seed(124)
n <- 100000; z <- rnorm(n)
zneg <- 0; j <- 1

for(i in 1:n){
  if(z[i] <0){
    zneg[j] <- z[i]
    j <- j+1
  }
}

#n is an integer equal to 100000
#z contains 100000 random values from a normal distribution
#zneg is equal to zero and j is equal to 1
#The for loop checks every element of z if it is less than zero
#if the condition checks True for an element, then it is appended to zneg. Then adds 1 to j.
#else, it does nothing

library(dplyr)
result = z[z<0]

cat("Are they identical?", identical(zneg,result))