data <- read.table("Data/household_power_consumption.txt", sep = ";", dec = ".", na.strings = ",", skip = 66638, nrows =  2879)
global_active_power <- as.numeric(data$V3)
png(filename = "~/ExData_Plotting1/Course_Project_1/plot1.png")
hist(global_active_power, xaxt = 'n', ylim = c(0, 1200), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "Red")
axis(side=1, at=seq(0,6, 2))
dev.off()

