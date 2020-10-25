userinp = readline("What do you want master?:")
splitted = strsplit(userinp, split = "")
rev = nchar(userinp):1
reversed_chars = splitted[[1]][rev]
reversed_chars = paste(reversed_chars, collapse = "")
cat(paste("The reverse of ",userinp," is ",reversed_chars,".",sep=""))