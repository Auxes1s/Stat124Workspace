userinp = readline("What do you want master?:")
for(i in seq(as.integer(userinp))){
  cat(rep("*",i))
  cat("\n")
}
for(i in seq(as.integer(userinp),by = -1)[-1]){
  cat(rep("*",i))
  cat("\n")
}