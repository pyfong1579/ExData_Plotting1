library(dplyr)

# Download source files from URL and unzip in workspace on 1st run only.

if(!file.exists("household_power_consumption.txt")) {
  tmp <- tempfile()
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",tmp)
  unzip(tmp)
  unlink(tmp)
  rm(tmp)
}

# Read into data frame with argument colClasses to reduce memory usage.
power<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na="?",colClasses=c(rep("character",2),rep("numeric",7)))

power <- power %>%
  # extract required dates
  filter(Date=="1/2/2007" | Date== "2/2/2007") %>%
  # combine and convert date/time
  mutate("Date/Time" = strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"))%>%
  relocate("Date/Time",before =Date)%>%
  select(-Date,-Time)

#Save as CSV data file
#write.csv(power, file = "Power.csv", row.names = FALSE)
