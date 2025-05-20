c<-c(5,10,15,20,25,30)
max_value<-max(c)
min_value<-min(c)
cat("Max value is ",max_value,"\n")
cat("Min value is ",min_value,"\n")

n<-as.integer(readline(prompt = "Enter a Number:  "))
if(n>0){
  f<-1
  for(i in 1:n){
    f<-f*i
  }
  cat("Factorial is:  ", f)
}else if(n<0){
  cat("Not valid")
}else{
  cat("Factorial of 0 is 1")
}

n <- as.integer(readline(prompt = "Enter a number: "))
if (n > 0) {
  a <- 0
  b <- 1
  if (n == 1) {
    cat(a)
  } else if (n == 2) {
    cat(a, b, "  ")
  } else {
    cat(a,"  ",b, "  ")
    for (i in 3:n) {
      c <- a + b
      cat("  ", c)
      a <- b
      b <- c
    }
  }
} else {
  cat("Enter a positive number")
}


a<-as.integer(readline("Enter first number:"))
b<-as.integer(readline("Enter second number:"))
op<-readline("Enter operation")
{
  if(op=="+"){
    cat(a+b)
  }
  if(op=="-"){
    cat(a-b)
  }
  if(op=="*"){
    cat(a*b)
  }
  if(op=="/"){
    cat(a/b)
  }
}

x=c(5,10,15,20,25)
y=c(1,2,3,4,5)
pie(x)
plot(x,y)
barplot(y)

x<-c(rep("Gold",20),rep("Silver",30),rep("Bronze",10))
cat(sample(x,10))

x<-c("success","failure")
cat(sample(x,10,replace= TRUE, prob=c(0.9,0.1)))

rainy_cloudy=function(cloudy,rainy,cloudy_rainy){
  result=rainy*cloudy_rainy/cloudy
  return(result)
}
cat("probability thaat it will rain on that day is: ", rainy_cloudy(0.4,0.2,0.85))



data(iris)
#printing first few rows
print(head(iris))
#printing structure
print(str(iris))

sepal_length_range <- range(iris$Sepal.Length)
cat("Range of Sepal Length:", sepal_length_range[1], "to", sepal_length_range[2])

sepal_length_mean<-mean(iris$Sepal.Length)
cat("Mean is", sepal_length_mean)

sepal_length_median <- median(iris$Sepal.Length)
cat("Median of Sepal Length:", sepal_length_median)

sepal_length_quantile<-quantile(iris$Sepal.Length, probs=c(0.25, 0.75))
sepal_length_iqr<-IQR(iris$Sepal.Length)
cat("1ST QUANTILE", sepal_length_quantile[1])
cat("2ndQUANTILE", sepal_length_quantile[2])
cat("IQR IS", sepal_length_iqr)

sepal_lenth_sd<-sd(iris$Sepal.Length)
sepal_lenth_var<-var(iris$Sepal.Length)
cat("Standard Deviation is:  ",sepal_lenth_sd)
cat("Variance is:  ", sepal_lenth_var)
cat(summary(iris))


#MODE
get_mode=function(x){
  fre=tabulate(x)
  mode=which.max(fre)
  return(mode)
}
cat("Mode of sepal length",get_mode(iris$Sepal.Length))

n=12
p=1/6
x=pbinom(6,n,p)
y=pbinom(9,n,p)
print(y-x)

mean<-72
sd<-15.2
x<-84

prob<-1- pnorm(x,mean,sd)
cat(prob*100)

prob_no_cars<-dpois(0,5)
cat(prob_no_cars)
prob_between<-ppois(47,50)
prob_between1<-ppois(50,50)
cat(prob_between1-prob_between)

success<-233
defect<-17
prob<-dhyper(3,defect,success,5)
cat(prob)

n <- 31       
p <- 0.447    
x_values <- 0:n  
pmf_values <- dbinom(x_values, size=n, prob=p)
cat("PMF values:", pmf_values, "\n")
#plot kro
plot(0:n, dbinom(0:n, size=n, prob=p), type="h")

cdf_values <- pbinom(x_values, size=n, prob=p)
#plot kro
# plot(0:n, pbinom(0:n, size=n, prob=p), type="s")
cat("CDF values:", cdf_values, "\n")

mean_X <- n * p
variance_X <- n * p * (1 - p)
sd_X <- sqrt(variance_X)
cat("Mean:", mean_X, "\n")
cat("Variance:", variance_X, "\n")
cat("Standard Deviation:", sd_X, "\n")

x=c(0,1,2,3,4)
p=c(0.41,0.37,0.16,0.05,0.01)
f1=sum(x*p)
print(f1)
f2=weighted.mean(x,p)
print(f2)
f3=c(x%*%p)
print(f3)


f<-function(t){0.1*exp(-0.1*t)}
expected_value<-integrate(function(t) f(t)*t,lower=0,upper=Inf)
cat(expected_value$value)

Y <- c(-12, -2, 8, 18)  
P_X <- c(0.1, 0.2, 0.2, 0.5)  
expected_Y <- sum(Y * P_X)
cat("Expected value of Y (Net Revenue):", expected_Y, "\n")

f<- function(x){0.5*exp(-abs(x))}
first_moment<-integrate(function(x) x*f(x),lower=1,upper=10)$value
second_moment<-integrate(function(x) x^2*f(x),lower=1,upper=10)$value
variance<-second_moment-(first_moment)^2

cat("Mean is: ", first_moment)
cat("Variance is: ", variance)
















#punif agr we are given an interval cdf
#dunif agr at point dena like x=30 pdf
#rexp for generating random samples
#set.seed() kya krta
P_a <- 1 - punif(45, min=0, max=60) #p(x>45) needed so either do lower.tail false or 1-
P_b <- punif(30, min=0, max=60) - punif(20, min=0, max=60)
cat("P(X > 45) =", P_a, "\n")
cat("P(20 <= X <= 30) =", P_b, "\n")

#punif, dunif, pexp, dexp

lambda<-1/3
f_x<-dexp(4, rat=lambda)
cat("Density function at x=4: ", f_x, "\n")
x_vals<-seq(0,5, length.out=100)

#Q2 LAST PART ASSIGNMENT 5
lambda <- 1/2

# Simulate 1000 exponential random numbers
sim_data <- rexp(1000, rate = lambda)

# Plot the histogram of simulated data
hist(sim_data,
     breaks = 40,
     col = "skyblue",
     main = "Histogram of Simulated Exponential Data (lambda = 1/2)",
     xlab = "Value",
     ylab = "Frequency",
     border = "white")














lambda <- 1/3

f_x <- dexp(4, rate=lambda)
cat("Density function at x = 4:", f_x, "\n")

x_vals <- seq(0, 5, length.out=100)
y_vals <- dexp(x_vals, rate=lambda)
plot(x_vals, y_vals, type="l", col="blue",main="Exponential PDF",
     xlab="x", ylab="Density")
grid()

P_x_leq_3 <- pexp(3, rate=lambda)
cat("P(X ≤ 3):", P_x_leq_3, "\n")

y_cdf <- pexp(x_vals, rate=lambda)
plot(x_vals, y_cdf, type="l", col="red",main="Exponential CDF ")
grid()

set.seed(42)
simulated_data <- rexp(1000, rate=lambda)
hist(simulated_data, breaks=30, probability=TRUE, col="lightblue", border="black")
lines(density(simulated_data), col="darkblue", lwd=2)




# alpha - shape, #beta - scale
# pgamma(X,shape,size) for cdf
#qgamma for Quantile Function (Inverse CDF)
pgamma(1, shape = 2, scale = 1/4, lower.tail = FALSE)

c<-0
count<-0.000000001
while(pgamma(c, shape = 2, scale = 1/4)<0.7){
  c<-c+count
}
print(c)

qgamma(0.7, shape = 2, scale= 1/4)


install.packages("pracma")
library(pracma)

f_xy <- function(x, y) {
  ifelse((x >= 0 & x <= 1 & y >= 0 & y <= 1), (2 * (2*x + 3*y) / 5), 0)
}
integral_value <- integral2(f_xy, xmin = 0, xmax = 1, ymin = 0, ymax = 1)
print(paste("Integral over the support:", integral_value$value))





f <- function(x, y) {
  return((x + y) / 30)
}

x <- c(0, 1, 2, 3)
y <- c(0, 1, 2)

joint_mass <- matrix(0, nrow = length(y), ncol = length(x))

for (i in 1:length(y)) {
  for (j in 1:length(x)) {
    joint_mass[i, j] <- f(x[j], y[i])
  }
}

print(joint_mass)

if(sum(joint_mass == 1)){
  cat("It is a joint mass function")
}



gx = apply(joint_mass,1,sum)
cat(gx)

gy = apply(joint_mass,2, sum)
cat(gy)


conditional_prob <- joint_mass[2,1]/gy[2]
print(conditional_prob)

E_X <- sum(x * gx)
E_Y <- sum(y * gy)
E_XY <- sum(outer(y, x, "*") * joint_mass)

Var_X <- sum((x - E_X)^2 * gx)
Var_Y <- sum((y - E_Y)^2 * gy)

Cov_XY <- E_XY - E_X * E_Y

Corr_XY <- Cov_XY / sqrt(Var_X * Var_Y)

cat("E(X):", E_X, "\n")
cat("E(Y):", E_Y, "\n")
cat("E(XY):", E_XY, "\n")
cat("Var(X):", Var_X, "\n")
cat("Var(Y):", Var_Y, "\n")
cat("Cov(X, Y):", Cov_XY, "\n")
cat("Correlation Coefficient:", Corr_XY, "\n")


n <- 100
df <- n - 1
t_values <- rt(n, df)
hist(t_values, xlab = "t values",col = "lightblue")


n <- 100
df <- 21025
chi_samples <- rchisq(n, df)
hist(chi_samples, xlab = "Value")

x <- seq(-6, 6, length= 100)
#df <- dt(x, df = 1)
#df<-dt(x, df= 4)
df3<-dt(x,df=10)
4<-dt(x, df= 30)
plot(x, df3,xlab = "x", ylab = "Density")
plot(x, df4,xlab = "x", ylab = "Density", type=)


x <- seq(-6, 6, length.out = 100)
y_df1 <- dt(x, df = 1)
y_df4 <- dt(x, df = 4)
y_df10 <- dt(x, df = 10)
y_df30 <- dt(x, df = 30)
plot(x, y_df30, type = "l", col = "blue", lwd = 2,
     main = "Student's t-Distribution with Different df",
     xlab = "x", ylab = "Density",
     ylim = c(0, 0.4))
lines(x, y_df10, col = "green", lwd = 2)
lines(x, y_df4, col = "orange", lwd = 2)
lines(x, y_df1, col = "red", lwd = 2)

#rchisq
#rt 
#dt 
# qf when quantile is given like(0.95 etc)
# pf when need to find area under the curve 
# rf when random( less than equal to etc, use lower.tail= false when x>q needs to be found)


#ASSIGNMENT 8
df <- read.csv(file.choose()) 
summary(df)

dim(df)
head(df,10)

m <- mean(df$Wall.Thickness)
print(m)
hist(df$Wall.Thickness, col = 'cyan')

abline(v=m, col='yellow', lwd=2)


#joint assignment and 8th ke 2 parts of 1st ques





age <- c(58, 69, 43, 39, 63, 52, 47, 31, 74, 36)
cholesterol <- c(189, 235, 193, 177, 154, 191, 213, 165, 198, 181)

# Step 2: Scatter plot
plot(age, cholesterol,
     main = "Scatter Plot of Age vs Cholesterol",
     xlab = "Age",
     ylab = "Cholesterol Level",
     pch = 19, col = "blue")

# Step 3: Fit linear regression model
model <- lm(cholesterol ~ age)

# Step 4: Add regression line to scatter plot
abline(model, col = "red", lwd = 2)

# Step 5: Predict cholesterol for age = 60
new_data <- data.frame(age = 60)
predicted_value <- predict(model, new_data)
print(predicted_value)





before <- c(209, 210, 205, 198, 216, 217, 238, 240, 222)
after  <- c(199, 207, 189, 209, 217, 202, 211, 223, 201)
t_result <- t.test(before, after, paired = TRUE, alternative = "greater")
print(t_result)
