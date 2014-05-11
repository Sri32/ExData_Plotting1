library(datasets)
dat <- read.table("household_power_consumption.txt")
subdat <- subset(dat, as.Date(dat$Date,format = "%d/%m/%Y") >= "2007-02-01" & as.Date(dat$Date,format = "%d/%m/%Y") <= "2007-02-02")
subdat[,3] <- as.numeric(as.character(subdat[,3]))
subdat[,4] <- as.numeric(as.character(subdat[,4]))
subdat[,5] <- as.numeric(as.character(subdat[,5]))
subdat[,6] <- as.numeric(as.character(subdat[,6]))
subdat[,7] <- as.numeric(as.character(subdat[,7]))
subdat[,8] <- as.numeric(as.character(subdat[,8]))
hist(subdat$Global_active_power,xlab="Glabal Active Power (kilowatts)",col="red",main="     Global Active Power     ") ## Create plot on screen device
dev.copy(png, file = "plot1.png",width = 480, height = 480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
