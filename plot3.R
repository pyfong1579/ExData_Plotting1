source("Data_Load.R")

plot(power$'Date/Time', power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering");
lines(power$'Date/Time', power$Sub_metering_1, col="black");
lines(power$'Date/Time', power$Sub_metering_2, col="red");
lines(power$'Date/Time', power$Sub_metering_3, col="blue");
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.copy(png,file = "plot3.png", width = 480, height = 480, units = "px")
dev.off()