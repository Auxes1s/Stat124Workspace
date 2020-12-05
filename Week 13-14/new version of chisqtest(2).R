#NEW VERSION CHISQTEST
chisqtest = function(data,alpha){
  Grand_Total = sum(data)
  Row_Total = rowSums(data)
  dim(Row_Total) = c(dim(data)[1],1)
  Col_Total = colSums(data)
  dim(Col_Total) = c(1,dim(data)[2])
  Eij = (Row_Total %*% Col_Total)/Grand_Total
  ChiSquared = sum(((data - Eij)^2)/Eij)
  #
  counter = 0
  for(x in Eij){
    if(x >= 5){
      counter = counter + 1
    }
    if(x <= 1){
      stop("A cell has an expected frequence of less than or equal to 1")
    }
  }
  if(counter < (0.8*dim(data)[2]*dim(data)[1]){
    stop("Should be 80 percent of all the cells is at least 5")
  }
  #
  v = (dim(data)[1] - 1) * (dim(data)[2] - 1)
  critval = qchisq(alpha,v,lower.tail = FALSE)
  if(ChiSquared > critval){
    message("Since the test statistic value ", round(ChiSquared,2), " exceeds the critical value ", round(critval,2),
            " we reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  } else {
    message("Since the test statistic value", round(ChiSquared,2)," does not exceed the critical value ", round(critval,2), 
            " we do not reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  }
}