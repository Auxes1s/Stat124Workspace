chisqtest = function(data,alpha){
  Grand_Total = sum(data)
  Row_Total = rowSums(data)
  dim(Row_Total) = c(dim(data)[1],1)
  Col_Total = colSums(data)
  dim(Col_Total) = c(1,dim(data)[2])
  Eij = (Row_Total %*% Col_Total)/Grand_Total
  ChiSquared = sum(((data - Eij)^2)/Eij)
  v = (dim(data)[1] - 1) * (dim(data)[2] - 1)
  critval = qchisq(alpha,v,lower.tail = FALSE)
  if(ChiSquared > critval){
    message("Since the test statistic value (", round(ChiSquared,2), ") exceeds the critical value (", round(critval,2),
            ") we reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  } else {
    message("Since the test statistic value", round(ChiSquared,2)," does not exceed the critical value (", round(critval,2), 
            ") we do not reject the null hypothesis of independence at (", alpha*100,"%) level of significance.")
  }
}


