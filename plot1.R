source("Data_LOad.R")

with(power,hist(Global_active_power, col = "red", main  = paste("Global Active Power"),xlab = ("Global Active Power (kilowatts)")))
dev.copy(png,file = "plot1.png", width = 480, height = 480, units = "px")
dev.off()
