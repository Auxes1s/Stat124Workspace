userinp = as.numeric(readline("What days do you want master?:"))
if(userinp == 1){
  cat("Sunday")
}else if(userinp ==2){
  cat("Monday")
}else if(userinp ==3){
  cat("Tuesday")
}else if(userinp ==4){
  cat("Wednesday")
}else if(userinp ==5){
  cat("Thursday")
}else if(userinp ==6){
  cat("Friday")
}else if(userinp ==7){
  cat("Saturday")
}else {
  cat("Invalid INPUT!")
}