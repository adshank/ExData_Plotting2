# Set working directory
dir_path = "C:/Users/adshan/Documents/Coursera/John Hopkins Data Science Specialization/Exploratory Data Analysis/Project 2"
setwd(dir_path)

# Read in coursera files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Get aggregate values for PM2.5 by year
x <- aggregate(Emissions ~ year, NEI, sum)

# Initialize png
png(filename = "plot1.png", width = 480, height = 480, units = "px")

# Plot data
par(mar = c(5, 5, 3, 3))
plot(x$year, x$Emissions, main = "Total PM2.5 Emissions in U.S., 1999 - 2008", xlab = "Year", ylab = "Emissions (tons)", xaxt = 'n', pch = 19)
axis(side = 1, at = c(1999, 2002, 2005, 2008))
lines(x$year, x$Emissions, type = "l")
