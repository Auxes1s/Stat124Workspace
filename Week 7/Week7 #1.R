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