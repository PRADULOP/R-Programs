data <- read.csv("C:/Users/Hp/OneDrive/Desktop/R/internals - internals.csv")
head(data)
names(data)
summary(data)
str(data)

data$Total <- ((data$FLAT+data$CN+data$SS+data$MM+data$MSS+data$DM)/100)*35
head(data)

topper <- data[which.max(data$Total),]
print(topper)

above_average <- data[data$Total > mean(data$Total),"NAME"]
print(above_average)

sorted_dataset <- data[order(data$Total,decreasing=TRUE),]
print(sorted_dataset)

write.csv(sorted_dataset,file = "marks.csv",row.names = FALSE)

