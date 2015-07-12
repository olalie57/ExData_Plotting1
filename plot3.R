###############################################
## Exploratory Data Analysis Course Project 1 #
## plot3.R creates plot3.png                  #
## July 12th 2015, Ola Lie                    #
###############################################

## Load data
source("init.R")

cat("Launch png device...\n")
png(filename = "plot3.png", bg = "transparent",
    width = 480, height = 480, units = "px")

cat("Create plot...\n")
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
    


cat("Close device...\n") 
dev.off() 