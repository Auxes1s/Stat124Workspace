# Members:
# Ignacio, Marc Shervin
# Tuyogon, Ann Rossell
# Batac, John Kenneth


#Set seed for uniformity of script
set.seed(124)

#Question 1 ----

#Initialize variables
X = matrix(runif(100000),1000,100); z <- rep(0,1000)

#Given
# for(i in 1:1000){
#   for(j in 1:100){
#     z[i] <- z[i] + X[i,j]
#   }
# }

#Rewritten
applyfunc = apply(X,1,sum)
rowSumsfunc = rowSums(X)

#Take the duration using the given, apply() function, and rowSums()
duration_forloop = system.time(for(i in 1:1000){
  for(j in 1:100){
    z[i] <- z[i] + X[i,j]
  }
})
duration_apply = system.time(apply(X,1,sum))
duration_rowSums = system.time(rowSums(X))

#Output results
message("For loop")
print(duration_forloop["elapsed"])
message("Using apply()")
print(duration_apply["elapsed"])
message("Using rowSums()")
print(duration_rowSums["elapsed"])

#Treating the results
message("Question 1: Are they identical? ", identical(z,applyfunc,rowSumsfunc))
conditionA = (duration_apply["elapsed"] < duration_forloop["elapsed"])
conditionB =  (duration_rowSums["elapsed"] < duration_forloop["elapsed"])
message("Is the apply function faster than the for loop? ", conditionA)
message("Is the rowSums function faster than the for loop? ", conditionB)

#Question 2 ----
#Initiate given variables
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
#zneg is equal to zero (which is the container for the negative values)
#j is also equal to 1 (which is the index used)
#The for loop checks every element of z if it is less than zero
#if the condition checks True for an element, then it is appended to zneg. Then adds 1 to j.
#else, it does nothing

result = z[z<0]

cat("Question 2: Are they identical?", identical(zneg,result))