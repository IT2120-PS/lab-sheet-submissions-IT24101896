# Set working directory
setwd("C:\\Users\\IT24101896\\Desktop\\PS_Lab8")
getwd()

# Import dataset
bag_weights <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(bag_weights)
attach(bag_weights)  

# Question 1: Population mean and standard deviation
popmean <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)

popmean
popsd

# Question 2: Draw 25 random samples of size 6 (with replacement)
samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i, sep=''))
}

colnames(samples) <- n

# Calculate sample means and sample standard deviations for each sample
s.means <- apply(samples, 2, mean)
s.means
s.sds <- apply(samples, 2, sd)
s.sds

# Question 3: Mean and standard deviation of the sample means
mean_of_sample_means <- mean(s.means)
mean_of_sample_means

sd_of_sample_means <- sd(s.means)
sd_of_sample_means

# Compare with population mean and standard deviation
popmean
mean_of_sample_means

popsd
sd_of_sample_means
