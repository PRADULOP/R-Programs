library("ggplot2")
library("lattice")
library("caret")

data <- read.csv("C:/Users/Hp/OneDrive/Desktop/R/heart_attack - heart_attack.csv")
head(data)
str(data)
summary(data)
names(data)


intrain <- createDataPartition(y=data$target,p=0.7,list=FALSE)
training <- data[intrain,]
testing <- data[-intrain,]

dim(training)
dim(testing)

anyNA(data)
summary(data)

training[["target"]] <- factor(training[["target"]])

trctrl <- trainControl(method="repeatedcv",number=10,repeats =3)

svm_Linear <- train(target~.,data=training,method="svmLinear",trControl=trctrl,preProcess=c("center","scale"),tuneLength=10)
svm_Linear

test_pred <- predict(svm_Linear,newdata = testing)
test_pred

