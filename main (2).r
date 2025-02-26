#import climate data
ClimateData <- read.csv("ClimateData.csv")
print(ClimateData)

#6. printing the data in the csv creates a table, while printing a summary creates an overview of  the data in the table such as central tendency (min, mean, median, max, and quartiles)
summary(ClimateData)

#7. FG stands for the number of foggy days
#8. Empty values are represented as NA 
paste (print("N/A:"), sum(is.na(ClimateData)))

#9. ClimateData's variable class is data.frame; it is data displayed as a table
paste (print("Variable Type:"), print(class(ClimateData)))

UniqueCD <- unique(ClimateData)
#duplicated(UniqueCD)
#10. Comment of code above checks if new dataset has removed duplicates
print(UniqueCD)
#11. Calculates mean and median of all columns within the cleaned dataset:
summary(UniqueCD)

#12. the standard deviation of T is NA because the NA in the dataset makes it impossible for the program to find the standard deviation.
print("standard deviation of T:")
sd(UniqueCD$T)

#13. to fix this problem we have to make the program ommit the NA values in its calculations, using na.omit
#sd(na.omit(UniqueCD$T))
print("standard deviation, ommiting NA values:")
sapply(na.omit(UniqueCD), sd)

#creates new variable out of climate data that is unique and omits NA values
OUCD <- na.omit(UniqueCD, na.rm = True)
print(OUCD)
#OUCD stands for omited, unique, Climate Data

#14. Creates Piechart:
Sort <- OUCD[, c("Year", "PP")]
Sort$Decade <- cut(Sort$Year, breaks = seq(1940, 2030, by = 10), include.lowest = TRUE, labels = c("1940-1949", "1950-1959", "1960-1969","1970-1979", "1980-1989", "1990-1999", "2000-2009", "2010-2019", "2020-2029"))
decade_data <- aggregate(PP ~ Decade, Sort, sum)
print (Sort)

PercLbl <- paste0(decade_data$Decade, " (", round(100 * decade_data$PP / sum(decade_data$PP), 1), "%)")

pie(decade_data$PP, labels =  PercLbl, main = "Precipitation by Decades", lty = 3)
#14. since there is only one year that counts PP in the 1970s it shows as having "less" rain

#15. Creates box and whisker plot:
EWData <- cbind(OUCD$SN, OUCD$TS, OUCD$TN, OUCD$GR)
print(EWData)
print(rowSums(EWData))
EWData<- rowSums(EWData)

boxplot(EWData, ylab= "Days", main= "Extreme Weather Events per Year", density=50, col="cadetblue3")

#16. Creates Histogram of avarage wind speeds
WS <- OUCD$V
print(OUCD$V)
hist(WS, main = "Histogram of Avarage Wind Speeds", xlab="Avarage Wind speeds", plot = TRUE, axes = TRUE, xlim = range(10:11, 11:12, 12:13, 13:14, 14:15, 15:16, 16:17, 17:18, 18:19, 19:20))
#16. 13-14 wind speed is the most populated on the histogram

#17. creates bar graph
bgx <- OUCD$Year
bgy <- OUCD$RA
print(cbind(bgx, bgy))

barplot(bgy, names.arg = bgx, main = "Amount of Rainy Days by Year", horiz = TRUE, ylab = "Year", xlab = "Avarage rainy days")
#17. yes i think a bar graph is good to represent this data, we can clearly see which year produced what amount of rain, meaning that the graph is functional

#18. creates a scatterplot of average annual maximum temperature vs. Year
spx <- OUCD$Year
spy <- OUCD$TM
print(cbind(spx, spy))

plot(spx, spy, main="Avg. Annual Maximum Temperature by Year", xlab="Year", ylab="Avarage Temperature")
#18. it appears to be trending ever so slightly upwards. although i do not think that the years are causing the upward trend, it is just correlated.


