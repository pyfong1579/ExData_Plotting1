source("Data_Load.R")

plot(power$'Date/Time',power$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.copy(png,file = "plot2.png", width = 480, height = 480, units = "px")
dev.off()