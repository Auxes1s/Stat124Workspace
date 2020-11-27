#Members:
#Ignacio, Marc Shervin U.
#Tuyogon, Ann Rossell
#Batac, John Kenneth

#Question 1 ----
setwd(paste(getwd(),"/Week 13-14",sep=""))
df = read.csv("dviolence.csv")
mean_SuspectAge = tapply(df$SuspectAge,df$Offense, mean)
mean_VictimAge = tapply(df$VictimAge,df$Offense, mean)
{message("Mean of Suspect Age grouped by offense \n"); print(mean_SuspectAge);
message("Mean of Victim Age grouped by offense \n") ;print(mean_VictimAge)}
#Another way to do it
#means = aggregate(x = df, by = list(df$Offense), FUN = mean)[,c("SuspectAge","VictimAge")]

#SHORT INTERPRETATION
#Violators of Abuse Prevention Order have the highest mean age compared to other suspects with around 44.96 years of age and their victims are around 38.875 years in age.
#Those charged with Aggravated Domestic Assault come in second compared to other suspects with around 36.57 years of age while their victims are around the same age (36.71).
#Those charged with Simple Domestic Assault are around 32.6 years of age while their victims are around 38.31429 years of age.

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
  