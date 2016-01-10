# Author: BJ
# Date: Jan 10, 2016

#Set working directory where ReadData.R is saved
setwd("C:\\Personal\\DataScientistCourse\\04_ExploratoryDataAnalysis\\Assignment1\\ExData_Plotting1")

#call R file to read data
#source("ReadData.R")

#create PNG file
png(filename="plot2.png", width = 480, height = 480)
#plot graph
plot(powerConsumptionData$Time, powerConsumptionData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
#close the PNG file writing
dev.off()

