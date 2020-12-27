unzip("Data/exdata_data_household_power_consumption.zip", exdir = "~/ExData_Plotting1/Course_Project_1/Data")
data <- read.table("~/ExData_Plotting1/Course_Project_1/Data/household_power_consumption.txt", sep = ";", dec = ".", na.strings = ",", skip = 66638, nrows =  2879)
global_active_power <- data$V3
global_reactive_power <- data$V4
voltage <- data$V5
datetime <- strptime(paste(data$V1, data$V2, sep=" "), "%d/%m/%Y %H:%M:%S") 
png(filename = "~/ExData_Plotting1/Course_Project_1/plot4.png")

## 2 X 2 plot grid
par(mfrow = c(2, 2))

## Plot 1
plot(datetime, global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

## Plot 2
plot(datetime, voltage, xlab = "datetime", ylab = "Voltage", type = "l")

## Plot 3
sub_metering_1 <- data$V7
sub_metering_2 <- data$V8
sub_metering_3 <- data$V9

plot(datetime, sub_metering_1, yaxt = 'n', type = "l", col = "red", ylim = c(0, 30), xlab = "", ylab = "Global sub metering")
axis(side=2, at=seq(0,30, 10))
par(new = TRUE)
plot(datetime, sub_metering_2, yaxt = 'n', type = "l", col = "yellow", ylim = c(0, 30), xlab = "", ylab = "Global sub metering")
axis(side=2, at=seq(0,30, 10))
par(new = TRUE)
plot(datetime, sub_metering_3, yaxt = 'n', type = "l", col = "green", ylim = c(0, 30), xlab = "", ylab = "Global sub metering")
axis(side=2, at=seq(0,30, 10))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("red", "yellow", "green"), lty = c(1, 1, 1), cex = 0.8)

## Plot 4
plot(datetime, global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")
dev.off()