unzip("Data/exdata_data_household_power_consumption.zip", exdir = "~/ExData_Plotting1/Course_Project_1/Data")
data <- read.table("~/ExData_Plotting1/Course_Project_1/Data/household_power_consumption.txt", sep = ";", dec = ".", na.strings = ",", skip = 66638, nrows =  2879)
png(filename = "~/ExData_Plotting1/Course_Project_1/plot2.png")
datetime <- strptime(paste(data$V1, data$V2, sep=" "), "%d/%m/%Y %H:%M:%S") 
global_active_power <- data$V3
plot(datetime, global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()