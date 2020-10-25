userinp = readline("What day do you want master?:")
result = switch(as.character(userinp),"1"="Sunday","2"="Monday", "3"="Tuesday", "4"="Wednesday","5"="Thursday","6"="Friday","7"="Saturday", stop("Invalid INPUT!"))
cat(result)
