#old version of chisqtest

chisqtest = function(data,alpha){
  nrows = dim(data)[1]
  ncols = dim(data)[2]
  #Take Total of all Rows and All Columns
  Row_Total = apply(data, 1, sum)
  Col_Total = apply(data,2, sum)
  Grand_Total = sum(Row_Total)
  #Get Eijs
  Eij = matrix(0,nrows,ncols)
  ChiSquared = 0
  for(i in 1:nrows){
    for(j in 1:ncols){
      Eij[i,j] = (Row_Total[i] * Col_Total[j])/Grand_Total
      ChiSquared = ChiSquared + (((data[i,j]-Eij[i,j])^2)/Eij[i,j])
    }
  }
  v = (nrows - 1) * (ncols - 1)
  critval = qchisq(alpha,v,lower.tail = FALSE)
  if(ChiSquared > critval){
    message("Since the test statistic value ", round(ChiSquared,2), " exceeds the critical value ", round(critval,2),
            " we reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  } else {
    message("Since the test statistic value ", round(ChiSquared,2)," does not exceed the critical value ", round(critval,2), 
            " we do not reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  }
}
