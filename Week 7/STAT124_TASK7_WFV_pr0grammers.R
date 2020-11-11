# Members:
# Tuyogon, Ann
# Batac, John Kenneth
# Ignacio, Marc Shervin


#Question 1 -----
given_sequence = 1:50

#ELSEIF Statements check if a number satisfies the conditions for BEEP or BOOP or BEEPBOOP
for(i in given_sequence){
  if((i %% 2 == 0)& (i %% 3 != 0)){
    cat("Beep\n")
  }else if((i %% 3 == 0)& (i %% 2 != 0)){
    cat("Boop\n")
  }else if((i %% 3 == 0)& (i %% 2 == 0)){
    cat("BeepBoop\n")
  } else {
    cat(paste(i,"\n"))
  }
}


#Question 2 -----

#userinp = readline("How many asterisks do you want master?:")
userinp = 6
#creates ascending sequence from 1 to the nth term.
ascending = seq(as.integer(userinp)) 
#creates descending sequence from nth term integers to 1.
descending = seq(as.integer(userinp), by = -1)[-1]

{for(i in ascending){
  cat(rep("*",i))
  cat("\n")
}; 
  
for(i in descending){
  cat(rep("*",i))
  cat("\n")
}}


#Question 3 -----
#Takes input from user
userinp = readline("What do you want to reverse master?: ")
#Initiate descending sequence and container for indexing the input string
descending = nchar(userinp):1
reversed_chars = NULL
#Loop for getting the reverse sequence
for(i in descending){
  reversed_chars = c(reversed_chars,substr(userinp, i, i))
}

cat("The reverse of ",userinp," is ",reversed_chars,".", sep="")