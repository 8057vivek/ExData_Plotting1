estimated_memory <- 2075259 * 9 * 8 / (1024^2)
estimated_memory
data <- read.csv("C:/Users/HP/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)
data
View(data)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$Time <- strptime(data$Time, format="%H:%M:%S")
filtered_data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
filtered_data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

png("plot1.png", width=480, height=480)
hist(filtered_data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
