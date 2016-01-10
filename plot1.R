# Author: BJ
# Date: Jan 10, 2016

#Set working directory where ReadData.R is saved
setwd("C:\\Personal\\DataScientistCourse\\04_ExploratoryDataAnalysis\\Assignment1\\ExData_Plotting1")

#call R file to read data
source("ReadData.R")

#create PNG file
png(filename="plot1.png", width = 480, height = 480)
#plot graph
hist(powerConsumptionData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
#close the PNG file writing
dev.off()

