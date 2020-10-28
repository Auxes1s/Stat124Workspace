userinp = readline("What day do you want master?:")
#If you want to intialize an integer variable use this:
#userinp = 3L
result = switch(as.character(userinp),"1"="Sunday","2"="Monday", "3"="Tuesday", "4"="Wednesday","5"="Thursday","6"="Friday","7"="Saturday", stop("Invalid INPUT!"))
cat(result)
