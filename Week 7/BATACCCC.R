####BATACCC

#### Question 1 ----
set <- 1:50
for (var in set){
  dos <- var %% 2
  tres <- var %% 3
  if(dos == 0){
    if(tres == 0){
      message("BeepBoop")
    } else {
      message("Beep")
    }
  }
  if(tres == 0){
    message("Boop")
  } else if (dos == 1) {
    message(var)
  }
}

#### Question 2 ----
i <- 0:5
j <- 6:2
{for (var in i){
  symbol1 <- var+1
  symbol2 <- 
  message(rep("*", each = symbol1))
  
};
for (var in j){
  symbol2 <- var-1
  message(rep("*", each = symbol2))
}}

####Question 3 ----
#Run 1st line first
input <- readline("say a word, master ")
#Once the user input, run the rest of the commands
word <- reverse_chars(input)
message("The reverse of ", input, " is ", word,".")