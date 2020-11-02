X <- matrix(runif(100000),1000,100); z <- rep(0,1000)
duration = system.time(for(i in 1:1000){
  for(j in 1:100){
    z[i] <- z[i] + X[i,j]
  }
})


b = apply(X,1,sum)
c = rowSums(X)
cat("Are they identical?", identical(z,b,c))