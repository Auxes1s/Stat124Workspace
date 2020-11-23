#Members:
#Ignacio, Marc Shervin
#Tuyogon, Ann Rossell
#Batac, John Kenneth


#Question 1A ----
#Please set working directory
setwd(paste(getwd(),"/Week 9-10", sep=""))
df = read.csv("dviolence.csv")
df["SexInter"] = paste0(df$SuspectSex, " on ", df$VictimSex)

#Question 1B ----
df$Relationship[df$Relationship=="Victim was Aquaintance"] = "Victim was Acquaintance"
RelTrimmed = trimws(df$Relationship, which = "left", whitespace = "Victim was ")
Checker = function(x){
  if(is.element(x,c("Ex-Spouse", "Boyfriend/Girlfriend - BG", "Spouse"))){
    x = "Lover/Ex-lover"
  }else if(is.element(x,c("Parent", "Child", "Other Family Member"))){
    x = "Family Member"
  }else if(is.element(x,c("Friend","Acquaintance", "Otherwise Known"))){
    x = "Others"
  }else if(is.element(x, "Relationship Unknown")){
    x = "Unknown"
  }else{
    x = x
  }
}
df$Relationship2 = as.character(lapply(RelTrimmed, Checker))

#Question 1C ----
df = df[,-2]

#Question 2A ----
conditionA = df$Relationship2 == "Others"
df[conditionA,c("SuspectAge","VictimAge")]

   
#Question 2B ----
conditionB = df$VictimAge < 18
df[conditionB,c("SuspectAge", "VictimAge", "Offense", "SexInter")]