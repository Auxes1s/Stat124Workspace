# Members:
# Tuyogon, Ann
# Batac, John Kenneth
# Ignacio, Marc Shervin


#Queston 1 -----
container = 1:50
for(i in container){
  if((i %% 2 ==0)& (i %% 3 != 0)){
    cat("Beep\n")
  }else if ((i %% 3 ==0)& (i %% 2 != 0)){
    cat("Boop\n")
  }else if ((i %% 3 ==0)& (i %% 2 == 0)){
    cat("BeepBoop\n")
  } else {
    cat(paste(i,"\n"))
  }
}

#Queston 2 -----
#userinp = readline("How many asterisks do you want master?:")
userinp = 6
for(i in seq(as.integer(userinp))){
  cat(rep("*",i))
  cat("\n")
}
for(i in seq(as.integer(userinp),by = -1)[-1]){
  cat(rep("*",i))
  cat("\n")
}

#Queston 3 -----
userinp = readline("What do you want to reverse master?:")
splitted = strsplit(userinp, split = "")
rev = nchar(userinp):1
reversed_chars = splitted[[1]][rev]
reversed_chars = paste(reversed_chars, collapse = "")
cat(paste("The reverse of ",userinp," is ",reversed_chars,".",sep=""))