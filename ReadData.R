# Author: BJ
# Date: Jan 10, 2016

##Assignment 1
##Power Consumption Analysis


##Estimate the memory requirement: 
##  Size per row:
##    Date in MM/dd/yyyy  10
##    Time in hh:mm:ss    8
##    7 numeric fields    7*8=56
##  Size  per row       74 bytes
##  Total number of rows  2,075,259 
##  Total size requirement: 2075259 * 74 bytes = 153,569,166 Bytes
##                                              =2075259*74/(1024*1024) MB
##                                              =146 MB
##                                              I will expect to have more than 150 MB in computer

##Check memory avaliability in computer
##This can be done through some advance R features with some effort

##Set working folder

setwd("C:\\Personal\\DataScientistCourse\\04_ExploratoryDataAnalysis\\Assignment1\\ExData_Plotting1")

##Download and extract file from following to this working folder: 
##    https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
##Note: R package could be used to download and extract.

##Read data
powerConsumptionData <- read.table("household_power_consumption.txt", 
                                   header=TRUE, 
                                   sep=";", 
                                   colClasses=c(
                                   "character", 
                                   "character", 
                                   rep("numeric",7) #7 consecuitive fields are numeric
                                   ), 
                                   na="?"
                                   )


#check table dimensions
nrow(powerConsumptionData)
ncol(powerConsumptionData)
colnames(powerConsumptionData)


##check summary
summary(powerConsumptionData)


##Conversion to date time
powerConsumptionData$Time <- strptime(paste(powerConsumptionData$Date, powerConsumptionData$Time), "%d/%m/%Y %H:%M:%S")


##Check class of Time field
class(powerConsumptionData$Time)

##Conversion to Date format
powerConsumptionData$Date<-as.Date(powerConsumptionData$Date,format='%d/%m/%Y')

##Check class of the Date field
class(powerConsumptionData$Date)


#Subset data
##Check orignal row count
nrow(powerConsumptionData)

powerConsumptionData <- subset(powerConsumptionData, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))

##Check row count after subsetting
nrow(powerConsumptionData)

