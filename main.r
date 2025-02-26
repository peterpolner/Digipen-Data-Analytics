#import climate data
ClimateData <- read.csv("ClimateData.csv")
print(ClimateData)
summary(ClimateData)

#6. printing the data in the csv creates a table, while printing a summary creates an overview of  the data in the table such as central tendency (min, mean, median, max, and quartiles)
#7. FG stands for the number of foggy days
#8. Empty values are represented as NA 
sum(is.na(ClimateData))
print(class(ClimateData))
#9. ClimateData's variable class is data.frame; it is data displayed as a table
duplicated(ClimateData)
unique(ClimateData)
ClimateData[!duplicated(ClimateData),]
duplicated(ClimateData)