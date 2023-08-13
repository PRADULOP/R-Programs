data <- read.csv("C:/Users/Hp/OneDrive/Desktop/R/binary - binary.csv")
head(data)
names(data)
summary(data)
str(data)

xtabs(~admit+rank,data)
data$rank <- factor(data$rank)

lr_model <- glm(admit~gre+gpa+rank,data=data,family = "binomial")
summary(lr_model)

new_data <- data.frame(gre=1000,gpa=4.00,rank=as.factor(1))

predict(lr_model,new_data,type="response")
