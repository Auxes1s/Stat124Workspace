#Members:
#Ignacio, Marc Shervin U.
#Tuyogon, Ann Rossell
#Batac, John Kenneth

#Question 1 ----
df = read.csv("dviolence.csv")
mean_SuspectAge = tapply(df$SuspectAge,df$Offense, mean)
mean_SVictimAge = tapply(df$VictimAge,df$Offense, mean)
#Another way to do it
means = aggregate(x = df, by = list(df$Offense), FUN = mean)[,c("SuspectAge","VictimAge")]


#NEED SHORT INTERPRETATION

#Question 2 ----
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
    message("Since the test statistic value ", round(ChiSquared,4), " exceeds the critical value ", round(critval,4),
            " we reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  } else {
    message("Since the test statistic value", round(ChiSquared,4)," does not exceed the critical value ", round(critval,4), 
            " we do not reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  }
}
  