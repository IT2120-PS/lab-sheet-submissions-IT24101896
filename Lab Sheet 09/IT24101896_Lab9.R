# Step 1: Set working directory
setwd("C:\\Users\\Jithmi Abewickrama\\Desktop\\2nd Year 1st Sem\\PS\\Lab Submition\\Lab9")

# Population: Normal(µ = 45, s = 2)
# Sample size = 25
# Hypotheses: H0: µ = 46  vs  H1: µ < 46
# Significance level = 5%

# i) Generate random sample
set.seed(42)   # for reproducibility
y <- rnorm(25, mean = 45, sd = 2)
y   # display the generated sample

# ii) Perform one-sample t-test
res <- t.test(y, mu = 46, alternative = "less")

# Print full results
res

# Extract values separately
res$statistic   # test statistic (t-value)
res$p.value     # p-value
res$conf.int    # confidence interval
mean(y)         # sample mean
sd(y)           # sample standard deviation

