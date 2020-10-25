x <- as.numeric(readline("What is x?:"))
y <- as.numeric(readline("What is y?:"))
z <- as.numeric(readline("What is z?:"))
#[[1 2][1 3][2 3]]
if(x > y){
  x = x + y
  y = x - y
  x = x - y
}
if(x > z){
  x = x + z
  z = x - z
  x = x - z
}
if(y > z){
  z = z + y
  y = z - y
  z = z - y
}
cat(paste("The largest number is", z))