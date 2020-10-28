userinp = readline("What days do you want master?:")
#If you want to intialize an integer variable use this:
#userinp = 3L
cat(case_when(userinp == "1" ~ "Sunday",userinp =="2" ~ "Monday", 
              userinp == "3" ~ "Tuesday", userinp == "4" ~ "Wednesday", userinp =="5" ~ "Thursday",
              userinp == "6" ~ "Friday", userinp =="7" ~ "Saturday", TRUE ~ "Invalid INPUT!"))