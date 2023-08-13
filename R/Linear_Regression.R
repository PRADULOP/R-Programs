data <- read.csv("C:/Users/Hp/OneDrive/Desktop/R/ageandheight.csv")
head(data)
names(data)
summary(data)
str(data)

lm_model <- lm(age~height,data)
summary(lm_model)

plot(data$height,data$age,xlab="Height",ylab="Age",main = "Scatter Plot with Regression Line")
abline(lm_model,col="red",lwd=2)

new_height <- c(70,75,89)
predicted_age <- predict(lm_model,newdata = data.frame(height=new_height))
print(predicted_age)

