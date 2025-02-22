# function for manhattan distance
manhattan_distance <- function(vec1, vec2) {
  
  return(sum(abs(vec1 - vec2)))
}

# function for euclidean distance
euclidean_distance <- function(vec1, vec2) {
  
  return(sqrt(sum((vec1 - vec2)^2)))
}

# vectors
vector1 <- c(3, 4, 5, 6)

vector2 <- c(1, 1, 1, 1)

# computing distances
manhattan_result <- manhattan_distance(vector1, vector2)

euclidean_result <- euclidean_distance(vector1, vector2)

# printing results
print("manhattan_result:")
print(manhattan_result)

print("euclidean result:")
print(euclidean_result)

# loading mtcars
data(mtcars)

# Calculate the correlation between mpg and wt
correlation_value <- cor(mtcars$mpg, mtcars$wt)

# print correlation
print("correlation between mpg and wt:") 
print(correlation_value)

# scatter plot
plot(mtcars$wt, mtcars$mpg, 
     main = "MPG vs. Weight",
     xlab = "weight",
     ylab = "mpg",
     pch = 19, col = "blue")
