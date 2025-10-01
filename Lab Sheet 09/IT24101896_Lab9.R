# Step 1: Set working directory
setwd("C:\\Users\\Jithmi Abewickrama\\Desktop\\2nd Year 1st Sem\\PS\\Lab Submition\\Lab8")

# Step 2: Import dataset
bag_weights <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)

# Step 2a: Check the data to know the column name
print(bag_weights)

# Suppose the column name is "Weight"
weights <- bag_weights$Weight  # Store the weight column in a variable

# Step 3: Calculate population mean and population SD
pop_mean <- mean(weights)
pop_sd <- sd(weights) * sqrt((length(weights) - 1)/length(weights))  # True population SD
cat("Population Mean:", pop_mean, "\n")
cat("Population Standard Deviation:", pop_sd, "\n\n")

# Step 4: Draw 25 random samples of size 6 (with replacement)
set.seed(123)  # For reproducibility
sample_means <- numeric(25)
sample_sds <- numeric(25)

for(i in 1:25){
  sample_i <- sample(weights, size=6, replace=TRUE)
  sample_means[i] <- mean(sample_i)
  sample_sds[i] <- sd(sample_i)
  cat("Sample", i, "Mean:", sample_means[i], "SD:", sample_sds[i], "\n")
}

cat("\n")  # Blank line

# Step 5: Mean and SD of the 25 sample means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)
cat("Mean of 25 Sample Means:", mean_of_sample_means, "\n")
cat("SD of 25 Sample Means:", sd_of_sample_means, "\n\n")

# Step 6: Relationship with population parameters
cat("Relationship:\n")
cat("- Mean of sample means ˜ Population Mean:", pop_mean, "\n")
cat("- SD of sample means ˜ Population SD / sqrt(sample size):", pop_sd / sqrt(6), "\n")
