# Author: BJ
# Date: Jan 10, 2016


#Set working directory where ReadData.R is saved
setwd("C:\\Personal\\DataScientistCourse\\04_ExploratoryDataAnalysis\\Assignment1\\ExData_Plotting1")

#call R file to read data
source("ReadData.R")

#create PNG file
png("plot3.png", width = 480, height = 480)

#plot graph
plot(powerConsumptionData$Time, powerConsumptionData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(powerConsumptionData$Time, powerConsumptionData$Sub_metering_2, type="l", col="red")
lines(powerConsumptionData$Time, powerConsumptionData$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))


dev.off()#close the PNG file writing


