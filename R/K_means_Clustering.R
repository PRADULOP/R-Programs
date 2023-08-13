library("ggplot2")
library("ggfortify")
library("dplyr")

summary(iris)
head(iris)
names(iris)
str(iris)

data <- select(iris,c(1:4))
head(data)

kmean <- kmeans(data,2)
kmean$centers
summary(kmean)

autoplot(kmean,data,frame=TRUE)
glimpse(kmean)
kmean

#Elbow method
set.seed(123)
is.na(data)

k.max <- 15

wss <- sapply(1:k.max,
              function(k){kmeans(data,k,nstart=50,iter.max=15)$tot.withinss})
plot(1:k.max,wss,type="b",pch=19,frame=FALSE,xlab="No of Clusters K",ylab="Total within-Clusters sum of squares")

