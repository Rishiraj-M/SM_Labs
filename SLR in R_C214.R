headbrain <- read.csv("D:/Data Science/headbrain.csv")
View(headbrain)
data<-data.frame(headbrain$Head.Size.cm.3.,headbrain$Brain.Weight.grams.)
x<-headbrain$Head.Size.cm.3.
y<-headbrain$Brain.Weight.grams.
x_bar <- mean(x)
y_bar <- mean(y)
n <- length(x)
numerator <- sum((x - x_bar) * (y - y_bar))
denominator <- sum((x - x_bar) ^ 2)
slope <- numerator / denominator
intercept <- y_bar - slope * x_bar
cat("Slope:", slope, "\n")
cat("Intercept:", intercept, "\n")
new_x <- c(1, 2, 3)
predicted_y <- slope * new_x + intercept
cat("Predicted values:", predicted_y, "\n")
slope = sum((x - x_bar) * (y - y_bar)) / sum((x - x_bar) ^ 2)
intercept = y_bar - slope * x_bar
slope
intercept
plot(x, y)
abline(intercept, slope, col = "red")