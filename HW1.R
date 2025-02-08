# problem 1a
su <- read.delim("Su_raw_matrix.txt", header = TRUE, sep = "\t")

# problem 1b
#mean function
mean_liver2 <- mean(su$Liver_2.CEL, na.rm = TRUE)

# standard deviation function
sd_liver2 <- sd(su$Liver_2.CEL, na.rm = TRUE)
# na.rm is set to true so that it will only output non-blank columns

# printing results from mean and sd
print(mean_liver2)
print(sd_liver2)

# problem 1c
column_mean <- colMeans(su, na.rm = TRUE)

column_sum <- colSums(su, na.rm = TRUE)
 # printing results from column mean and column sum
print(column_mean)
print(column_sum)

# problem 2a
gen_ten_thou1 <- rnorm(n = 10000, mean = 0, sd = 0.2)
#printing results
print(gen_ten_thou1)
# plotting histogram
hist(gen_ten_thou1, 
     main = "Histogram of ordered pair(0, 0.2)", 
     xlab = "Value", 
     col = "lightblue", 
     border = "black",
     breaks = 50)

#problem 2b
gen_ten_thou2 <- rnorm(n = 10000, mean = 0, sd = 0.5)
print(gen_ten_thou2)
#plotting histogram
hist(gen_ten_thou2, 
     main = "Histogram of ordered pair(0, 0.5)", 
     xlab = "Value", 
     col = "lightblue", 
     border = "black",
     breaks = 50)

#problem 3a
library(ggplot2)
dat <- data.frame(cond = factor(rep(c("A","B"), each=200)), rating = c(rnorm(200),rnorm(200, mean=.8)))

#problem 3b
library(ggplot2)
# Overlaid histograms
ggplot(dat, aes(x=rating, fill=cond)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity")

#problem 3c
library(ggplot2)
# Interleaved histograms
ggplot(dat, aes(x=rating, fill=cond)) + geom_histogram(binwidth=.5, position="dodge")

#problem 3d
library(ggplot2)
# Density plots
ggplot(dat, aes(x=rating, colour=cond)) + geom_density()

#problem 3e
library(ggplot2)
# Density plots with semitransparent fill
ggplot(dat, aes(x=rating, fill=cond)) + geom_density(alpha=.3)

#problems 3a-e again
# dataframe for diabetes from diabetes_train.csv
diabetes <- read.csv("diabetes_train.csv", header = TRUE)

#problem 3b
library(ggplot2)
# Overlaid histograms
ggplot(diabetes, aes(x=mass, fill=class)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity")

#problem 3c
library(ggplot2)
# Interleaved histograms
ggplot(diabetes, aes(x=mass, fill=class)) + geom_histogram(binwidth=.5, position="dodge")

#problem 3d
library(ggplot2)
# Density plots
ggplot(diabetes, aes(x=mass, colour=class)) + geom_density()

#problem 3e
library(ggplot2)
# Density plots with semitransparent fill
ggplot(diabetes, aes(x=mass, fill=class)) + geom_density(alpha=.3)

#problem 4
#making a dataframe named passengers for titanic.csv
# reading titanic
passengers <- read.csv("titanic.csv", header = TRUE)


#problem 4a
library(tidyr)
passengers %>% drop_na() %>% summary()

#problem 4b
library(dplyr)
passengers %>% filter(Sex == "male")
  
#problem 4c
library(tidyverse)
passengers %>% arrange(desc(Fare))

#problem 4d
library(tidyverse)
passengers %>% mutate(FamSize = Parch + SibSp)

#problem 4e
library(tidyverse)
passengers %>% group_by(Sex) %>% summarise(meanFare = mean(Fare), numSurv = sum(Survived))

#problem 5
# calculating the 10th, 30th, 50th, and 60th percentilesof skin

percentiles <- quantile(diabetes$skin, probs = c(0.10, 0.30, 0.50, 0.60), na.rm = TRUE)

# print result
print(percentiles)
