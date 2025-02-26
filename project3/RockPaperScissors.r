#source("RockPaperScissors.r")

#player choice
player <- readline(prompt = "What do you want to play? ")
if (player == "rock"){
  chs <- "rock"
  print("you chose rock!")
} else if (player == "paper") {
  chs <- "paper"
  print("you chose paper!")
} else if (player == "scissors"){
  chs <- "scissors"
  print("you chose scissors!")
} else {
  print("Incorrect input try again!")
}

# computer choice
choice <- c("rock", "paper", "scissors")
PC <- sample(choice, 1)
print(paste("computer chose ", PC, "!"))

#win/lose condition
win <- "you're the better player! you win!"
lose <- "you can't even beat a computer! you lose!"

if (chs == PC) {
  print ("Jinx! rematch")
} else if (chs == "rock" & PC == "scissors"){
  print(win)
} else if (chs == "rock" & PC == "paper"){
  print(lose)
} else if (chs == "paper" & PC == "scissors"){
  print(lose)
} else if (chs == "paper" & PC == "rock") {
  print(win)
} else if (chs == "scissors" & PC == "paper"){
  print(win)
} else if (chs == "scissors" & PC =="rock"){
  print(lose)
}
