#BATACCC WEEK 9&10

####Question #1 ----
ins_cap <- read.csv("dviolence.csv")

#a
ins_cap$SexInter <- c(paste(ins_cap[,"SuspectSex"], " on ", ins_cap[,"VictimSex"]))

#b
#To remove the words "Victim was " on the elements on "Relationship" column
RelTrim = gsub("\\Victim was ", "", ins_cap[,"Relationship"])
#A function was made which will be used on lapply() function later on
Replacement = function(x) 
  if(x %in% c("Ex-Spouse", "Boyfriend/Girlfriend - BG", "Spouse"))
     {paste("Lover/Ex-lover")
    }else if(x %in% c("Parent", "Child", "Other Family Member"))
     {paste("Family Member")
    }else if(x %in% c("Offender")) 
     {paste("Offender")
    }else if(x %in% c("Friend", "Aquaintance", "Otherwise Known"))
     {paste("Others")
    }else if(x %in% c("Relationship Unknown"))
     {paste("Unknown")}
ins_cap$Relationship2 <- lapply(RelTrim, Replacement)

#c
ins_cap[,-2]

####Question 2----
#a
subset1 <- subset(ins_cap, Relationship2 == "Others")

#b
subset2 <- subset(ins_cap, VictimAge < 18, select = c("SuspectAge", "VictimAge", "Offense", "SexInter"))