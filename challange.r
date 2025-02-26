#R
#source("challange.r")

#Challange 1: Array of Matrices (Pensive)
#  x <- matrix( 3:9 , 3 , 3 )
#  y <- matrix( 6:9 , 3 , 3 )

#  print(x)
#  print(y)

#  z <- array( c( x , y ) , dim = c( 3 , 3 , 2 ) )

#  print(z)

#challange 2: List with 2 vectors (pensive)
#  list1 <- list(sample(1:100, 100), x)
#  print(list1)

#challange 3: Matrix from vectors (Complete)
x <- c(3, 17, 8)
y <- c(5, 17, 8)
z <- c(6, 17, 8)

m <- matrix(cbind(x, y, z), nrow = 3, ncol = 3)
row.names(m) <- c("a", "b", "c")
print(m)

#challange 4: accessing elements in a list

#challange 5: fizz buzz (Complete)
for (number in 1:100) {
  if (number %% (2*3) == 0){
    cat("FizzBuzz")
    cat(" ")
  }
  else if (number %% 3 == 0){
    cat("Fizz")
    cat(" ")
  }
  else if (number %% 2 == 0){
    cat("Buzz")
    cat(" ")
  }
  else{
    cat(number)
    cat(" ")
  }
}
cat(" \n")

#challange 6: Custom number sequences

#challange 7: Fibonacci sequence

fibonacci <- function(n){
  if (n <= 1)
    return(n)
  else
    return(fibonacci(n - 1) + fibonacci(n - 2))
}
for (i in 1:100) print(fibonacci(i))

#challange 8: Return prime numbers

#challange 9: Taking userinput (Complete)
name <- readline(prompt = "What is your name?")
city <- readline(prompt = "Which city are you from?")

print(paste("my name is", name, "and im from", city, sep=" ", collapse=NULL))

#challange 10