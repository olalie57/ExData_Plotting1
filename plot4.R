###############################################
## Exploratory Data Analysis Course Project 1 #
## plot4.R creates plot4.png                  #
## July 12th 2015, Ola Lie                    #
###############################################

## Load data
source("init.R")

cat("Launch png device...\n")
png(filename = "plot4.png", bg = "transparent",
    width = 480, height = 480, units = "px")

cat("Create  plot...\n")
par(mfcol = c(2, 2))

## Global Active Power 
plot(df$dateTime,df$Global_active_power,
     type="l",
     main="",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     col="black")

## Energy Sub Metering
plot(df$dateTime,df$Sub_metering_1,
     type="n",
     main="",
     ylab="Energy Sub Metering",
     xlab="")

lines(df$dateTime,df$Sub_metering_1, col = "black")
lines(df$dateTime,df$Sub_metering_2, col = "red")
lines(df$dateTime,df$Sub_metering_3, col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd = 1, col = c("black", "red", "blue"))

## Voltage
plot(df$dateTime,df$Voltage,
     type="l",
     main="",
     ylab="Voltage",
     xlab="datetime",
     col="black")

## Global_reactive_power
plot(df$dateTime,df$Global_reactive_power,
     type="l",
     main="",
     ylab="Global_reactive_power",
     xlab="datetime",
     col="black")

cat("Close device...\n") 
dev.off() 