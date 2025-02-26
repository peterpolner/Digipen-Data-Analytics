#R
#source("challange.r")

#Challange 1: Array of Matrices (Complete)
  x <- c( 3, 9 , 3)
  y <- c( 6, 9 , 3 , 5, 8)

  z <- array( c( x , y ), dim=c(3,3,2))

  print(z)

#challange 2: List with 2 vectors (pensive)
vector1 <- sample(1:100, 100)
vector2 <- "x"

list1 <- cbind((vector1), vector2)
print(list1)

#challange 3: Matrix from vectors (Complete)
x <- c(3L, 17L, 8L)
y <- c(5L, 17L, 8L)
z <- c(6L, 17L, 8L)

m <- matrix(cbind(x, y, z), nrow = 3, ncol = 3)
row.names(m) <- c("a", "b", "c")
print(m)

#challange 4: accessing elements in a list (Complete)
a <- c(1:3)
b <- matrix(c(8:13),nrow = 3, ncol = 2)
c <- list("A", "B", "C")

l <- list(a, b, c)
print(l[2])

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

#challange 6: Custom number sequences (Complete)
seq <- 20:70
mean <- mean(23:97)
sum <- sum(34:89)

cns <- list(seq, mean, sum)
print(cns)

#challange 7: Fibonacci sequence (Complete)
value <- readline(prompt = "how many values do you want to calculate?")
fibonacci <- function(n){
  if (n <= 1)
    return(n)
  else
    return(fibonacci(n - 1) + fibonacci(n - 2))
}
for (i in 1:value) print(fibonacci(i))

#challange 8: Return prime numbers (Complete)
parameter <- 80
for (num in 1:parameter) {
  if (num == 2) {
  TRUE
    cat(num)
    cat("")
  } else if (any(num %% 2:(num-1) == 0)) {
  FALSE
  } else {
  TRUE
    cat(num)
    cat(" ")
}
}
cat(" \n")

#challange 9: Taking userinput (Complete)
name <- readline(prompt = "What is your name?")
city <- readline(prompt = "Which city are you from?")

print(paste("my name is", name, "and im from", city, sep=" ", collapse=NULL))

#challange 10 (complete)
vector <- c(sample(-100:100, 8))
m2 <- matrix(vector, nrow = 2, ncol = 4)
m3 <- rbind(m2, c(colSums(m2)))
m4 <- rbind(m3,c(colMeans(m2)))
row.names(m4) <- c("1","2","Sum", "Avarage")

print(m2)
print(m4)

