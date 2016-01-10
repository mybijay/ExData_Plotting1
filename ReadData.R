# Author: BJ

##Assignment 1
##Power Consumption Analysis

##Set working folder

setwd("C:\\Personal\\DataScientistCourse\\04_ExploratoryDataAnalysis\\Assignment1\\ExData_Plotting1")

##Download and extract file from following to this working folder: 
##    https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
##Note: R package could be used to download and extract.

##Read data
powerConsumptionData <- read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")


#check table dimensions
nrow(powerConsumptionData)
ncol(powerConsumptionData)
colnames(powerConsumptionData)


##check summary
summary(powerConsumptionData)


##Conversion to date time
powerConsumptionData$Time <- strptime(paste(powerConsumptionData$Date, powerConsumptionData$Time), "%d/%m/%Y %H:%M:%S")
##Check class
class(powerConsumptionData$Time)

##Conversion to Date format
powerConsumptionData$Date<-as.Date(powerConsumptionData$Date,format='%d/%m/%Y')
##Check class
class(powerConsumptionData$Date)


#Subset data
##Check orignal row count
nrow(powerConsumptionData)
powerConsumptionData <- subset(powerConsumptionData, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))
nrow(powerConsumptionData)

