require(devtools)
install_github("slidify", "ramnathv", ref = "dev")
install_github("slidifyLibraries", "ramnathv", ref = "dev")

author("peah2013")

require(slidify)
require(rCharts)
library(reshape)
library(ggplot2)
library(scales)

peah <- read.csv("Peah crops stats.csv")
names <- read.csv("names.csv")

yearly <- ddply(peah, .(Year, Crop), summarise, 
                Pounds = sum(Pounds),
                Calories = sum(Calories),
                Calories.per.plot = sum(Calories.per.plot) / mean(Number.of.plots))

#2013 results by plot and by crop
peah13 <- subset(peah, Year == 2013)
peah13 <- merge(peah13, names, by = "Plot.number")

#Histogram of each crop historically + this year
#Add strip text option to shrink font size
ggplot(data = subset(yearly, Crop %in% unique(peah13$Crop)), aes(x = Calories)) + 
  geom_dotplot(binwidth = 3000, alpha = 0.2) + 
  scale_y_continuous(name = "", breaks = NULL) + 
  geom_dotplot(data = ddply(peah13, .(Crop), summarise, sum = sum(Calories)), aes(x = sum), binwidth = 3000, fill = "red", colour = "red") + 
  theme_minimal() + 
  facet_wrap(~ Crop)


#overall
ggplot(data = ddply(peah, .(Year), summarise, 
                    Pounds = sum(Pounds),
                    Calories = sum(Calories)), 
       aes(x = Year, y = Calories)) + 
  geom_line() + 
  scale_y_continuous(limits = c(0,170000), labels = comma) + 
  theme_minimal()

#Try to make data cumulative by date
peah$Date <- as.Date(peah$Date, format = "%m/%d/%Y")
peah$Week = as.integer(format(strptime(peah$Date,"%Y-%m-%d"),"%W"))

cumul <- cast(subset(peah, Year > 2008), 
              Crop + Week ~ Year, value = "Pounds", sum)

crops <- unique(cumul$Crop)

for (i in 1:length(crops)) 
  {x <- subset(cumul, Crop == crops[i])
   x[3:7] <- cumsum(x[3:7])
   x <- melt(as.data.frame(x), id.vars = c("Crop", "Week"))
   p <- nPlot(value ~ Week, 
              group = "variable",
              data = x,
              type = 'lineChart')
   p
 }