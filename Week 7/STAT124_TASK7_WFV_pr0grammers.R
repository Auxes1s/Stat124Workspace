# Members:
# Tuyogon, Ann
# Batac, John Kenneth
# Ignacio, Marc Shervin


#Queston 1 -----
given_sequence = 1:50

#ELSEIF Statements check if a number satisfies the conditions for BEEP or BOOP or BEEPBOOP
for(i in given_sequence){
  if((i %% 2 == 0)& (i %% 3 != 0)){
    cat("Beep\n")
  }else if ((i %% 3 == 0)& (i %% 2 != 0)){
    cat("Boop\n")
  }else if ((i %% 3 == 0)& (i %% 2 == 0)){
    cat("BeepBoop\n")
  } else {
    cat(paste(i,"\n"))
  }
}


#Queston 2 -----

#userinp = readline("How many asterisks do you want master?:")
userinp = 6
#creates ascending sequence from 1 to the nth term.
ascending = seq(as.integer(userinp)) 
#creates descending sequence from nth term integers to 1.
descending = seq(as.integer(userinp), by = -1)[-1]

for(i in ascending){
  cat(rep("*",i))
  cat("\n")
}
for(i in descending){
  cat(rep("*",i))
  cat("\n")
}


#Queston 3 -----
#Takes user input
userinp = readline("What do you want to reverse master?:")
#Splits user input of string into a list of the characters
splitted = strsplit(userinp, split = "")
#Creates a sequence of descending integers for indexing
rev = nchar(userinp):1
#Uses the created sequence and indexes splitted
reversed_chars = splitted[[1]][rev]
#Joins the list of characters into one string
reversed_chars = paste(reversed_chars, collapse = "")

cat("The reverse of ",userinp," is ",reversed_chars,".", sep="")