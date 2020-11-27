# Members:
# Ignacio, Marc Shervin
# Tuyogon, Ann Rossell
# Batac, John Kenneth


# Question 1A ----
#Please set working directory
#setwd(paste(getwd(),"/Week 9-10", sep=""))
dviolence = read.csv("dviolence.csv")
dviolence["SexInter"] = paste(dviolence$SuspectSex, "on", dviolence$VictimSex)

# Question 1B ----
dviolence$Relationship[dviolence$Relationship=="Victim was Aquaintance"] = "Victim was Acquaintance"
RelTrimmed = gsub("Victim was ", "", dviolence[,"Relationship"])
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
dviolence$Relationship2 = as.character(lapply(RelTrimmed, Checker))

# Question 1C ----
dviolence = dviolence[,-2]

# Question 2A ----
answer_2A =  subset(dviolence, Relationship2 == "Others",c("SuspectAge","VictimAge"))
answer_2A
   
# Question 2B ----
answer_2B = subset(dviolence, VictimAge < 18, select = c("SuspectAge", "VictimAge", "Offense", "SexInter"))
answer_2B