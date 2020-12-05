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
#NEW VERSION CHISQTEST
chisqtest2 = function(data,alpha){
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
    message("Since the test statistic value ", round(ChiSquared,2), " exceeds the critical value ", round(critval,2),
            " we reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  } else {
    message("Since the test statistic value ", round(ChiSquared,2)," does not exceed the critical value ", round(critval,2), 
            " we do not reject the null hypothesis of independence at ", alpha*100,"% level of significance.")
  }
}




  