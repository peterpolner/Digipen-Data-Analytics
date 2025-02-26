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

Sort <- OUCD[, c("Year", "PP")]
Sort$Decade <- cut(Sort$Year, breaks = seq(1940, 2030, by = 10), include.lowest = TRUE, labels = c("1940-1949", "1950-1959", "1960-1969","1970-1979", "1980-1989", "1990-1999", "2000-2009", "2010-2019", "2020-2029"))
decade_data <- aggregate(PP ~ Decade, Sort, sum)
print (Sort)


PercLbl <- paste0(decade_data$Decade, " (", round(100 * decade_data$PP / sum(decade_data$PP), 1), "%)")

pie(decade_data$PP, labels =  PercLbl, main = "Precipitation by Decades", lty = 3)

#labels = c("1940-1949", "1950-1959", "1960-1969","1970-1979", "1980-1989", "1990-1999", "2000-2009", "2010-2019", "2020-2029")
#14. since there is only one year that counts PP in the 1970s it shows as having "less" rain

EWData <- cbind(OUCD$SN, OUCD$TS, OUCD$TN, OUCD$GR)
#OUCD[-c(T), -c(TM), -c(Tm), -c(PP), -c(V), -c(RA), -c(FG)]
print(EWData)
print(rowSums(EWData))
boxplot(EWData)