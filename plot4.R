source("Data_Load.R")

#set up plot grid
par(mfrow = c(2, 2))

# Top Left Plot
source ("plot2.R")

# Top Right Plot
plot(power$'Date/Time', power$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# Bottom Left Plot
source("plot3.R")

# Bottom Right Plot
plot(power$'Date/Time', power$Global_reactive_power, type = "l", xlab = "datetime", ylab = colnames(power)[3])

dev.copy(png,file = "plot4.png", width = 480, height = 480, units = "px")
dev.off()