#Problem 1

# Load the dataset
data <- read.csv("income.data.csv")

#makign sure data is loaded
head(data)

#Load the data and fit a linear regression model using Income as the independent variable and Happiness as the
#dependent variable:
model1 <- lm(happiness ~ income, data = data)

#Use the summary() function to view the results of the regression:
summary(model1)

#Problem 2

#calculate the residuals of the model
residuals1 <- residuals(model1)

#plot the residuals to check for homoscedasticity (constant variance of residuals)
plot(residuals1, main = "Residuals of Simple Linear Regression")

#Calculate the residual sum of squares (RSS) for the model:
RSS1 <- sum(residuals1)

#Calculate the Mean Squared Error (MSE) for the model:
MSE1 <- mean(residuals1)

