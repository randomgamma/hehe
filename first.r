# print((matrix(c(1,7,9,2,9,4,5,6,3),nrow=3,ncol=3)))

# A<- c(1,2,3)
# B<- c(4,5,6,7,8,9)
# C<- array(c(A,B),dim=c(3,3,3))
# print(C)

# df<-data.frame(Numbers=c(1,2,3),Letters=c('A','B','C'),Vowels=c('A','E','I'))
# print(df)

# x <- c(1, 2, 3)
# y <- c(4, 5, 6)
# plot(x, y)

# use cat function

# b <- as.integer(readline(prompt = 'Enter b: '))
# a <- as.integer(readline(prompt = 'Enter a: '))
# c <- as.integer(readline(prompt = 'Enter c: '))

# d <- b^2 - 4 * a * c 

# #continue ki jagah next, break as it is
# print(d)
# if (d > 0) {
#   cat("2 distinct real roots")
# } else if (d == 0) {
#   cat("2 identical real roots")
# } else {
#   cat("2 complex roots")
# }

# #WHILE
# i<- 1
# while (i <= 5) {
#   print(i)  
#   i <- i + 1
#   if (i == 3) {
#     break
#   }
# }

#FOR LOOP
# for (i in 1:5) {
#   print(i)
# }

# FACTORIAL
# n <- as.integer(readline(prompt = "Enter a number: "))
# if (n > 0) {
#     f <- 1
#   for (i in 1:n) {
#     f <- f * i
#   }
#   cat("factorial is", f)
# } else if (n<0) {
#     cat("not defined")
# } else {
#     cat("factorial of 0 is 1")
# }

#FIBONACCI
# n <- as.integer(readline(prompt = "Enter a number: "))
# if (n > 0) {
#   a <- 0
#   b <- 1
#   if (n == 1) {
#     cat(a)
#   } else if (n == 2) {
#     cat(a, b, "  ")
#   } else {
#     cat(a,"  ",b, "  ")
#     for (i in 3:n) {
#       c <- a + b
#       cat("  ", c)
#       a <- b
#       b <- c
#     }
#   }
# } else {
#   cat("Enter a positive number")
# }


# A<-c(rep("G",20),
# rep("S",30),
# rep("B",50))
# print(sample(x=A,size=10))

# find_min_n <- function() {
#   prob_no_shared <- 1
#   n <- 0
  
#   while (prob_no_shared > 0.5) {
#     n <- n + 1
#     prob_no_shared <- prob_no_shared * (365 - (n - 1)) / 365
#   }
  
#   return(n)

# min_n <- find_min_n()
# print(paste("Smallest n for which P(shared birthday) > 0.5 is:",min_n))


# get_mode <- function(x) {
#   unique_x <- unique(x)
#   freq <- tabulate(match(x, unique_x))
#   mode_value <- unique_x[which.max(freq)]
#   return(mode_value)
# }

# data <- c(1, 2, 3, 4, 4, 5, 6, 6, 6, 7)
# get_mode(data)


# l <- 5 * (17 / 250)  
# k <- 3  
# P <- (l^k * exp(-l)) / factorial(k)
# print(P)


# Z<-pnorm(84, mean=72, sd=15.2, lower.tail=FALSE)
# print(Z)


# f


# f <- function(t) { 0.1 * exp(-0.1 * t) }
# result <- integrate(function(t) t * f(t), lower = 0, upper = Inf)
# cat("Expected value of T:", result$value, "\n")


Y <- c(-12, -2, 8, 18)  
P_X <- c(0.1, 0.2, 0.2, 0.5)  
expected_Y <- sum(Y * P_X)
cat("Expected value of Y (Net Revenue):", expected_Y, "\n")



