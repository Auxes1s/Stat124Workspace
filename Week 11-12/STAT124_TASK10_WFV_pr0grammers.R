# Members:
# Tuyogon, Ann Rossell
# Batac, John Kenneth
# Ignacio, Marc Shervin


# Question 1 ----
trianglr = function(h){
  #creates ascending sequence from 1 to the nth term.
  ascending = seq(as.integer(h)) 
  #creates descending sequence from nth term integers to 1.
  descending = seq(as.integer(h), by = -1)[-1]
  
  for(i in ascending){
    cat(rep("*",i))
    cat("\n")
  }
    
  for(i in descending){
    cat(rep("*",i))
    cat("\n")
  }
}

# Question 2 ----
trianglr = function(h){
  if(h != floor(h)){
    stop("Your input is not an integer: it should be a positive integer")
  }
  if((h < 2) || (h > 10)){
    stop("The function only takes integers from 2 to 10.")
  }
  #creates ascending sequence from 1 to the nth term.
  ascending = seq(as.integer(h)) 
  #creates descending sequence from nth term integers to 1.
  descending = seq(as.integer(h), by = -1)[-1]
  
  for(i in ascending){
    cat(rep("*",i))
    cat("\n")
  } 
    
  for(i in descending){
    cat(rep("*",i))
    cat("\n")
  }
}

# Question 3 ----
trianglr = function(h=5){
  if((h < 2) || (h > 10)){
    stop("The function only takes integers from 2 to 10 only.")
  }
  #creates ascending sequence from 1 to the nth term.
  ascending = seq(as.integer(h)) 
  #creates descending sequence from nth term integers to 1.
  descending = seq(as.integer(h), by = -1)[-1]
  
  for(i in ascending){
    cat(rep("*",i))
    cat("\n")
  }
    
  for(i in descending){
    cat(rep("*",i))
    cat("\n")
  }
}

