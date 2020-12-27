unzip("Data/exdata_data_household_power_consumption.zip", exdir = "~/ExData_Plotting1/Course_Project_1/Data")
data <- read.table("~/ExData_Plotting1/Course_Project_1/Data/household_power_consumption.txt", sep = ";", dec = ".", na.strings = ",", skip = 66638, nrows =  2879)
datetime <- strptime(paste(data$V1, data$V2, sep=" "), "%d/%m/%Y %H:%M:%S")
png(filename = "~/ExData_Plotting1/Course_Project_1/plot3.png")

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
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("red", "yellow", "green"), lty = c(1, 1, 1), bty = "o", cex = 0.8)

dev.off()