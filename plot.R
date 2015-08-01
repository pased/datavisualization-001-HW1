# Programming Assignment 1: Visualize Data Using a Chart

library(ggplot2)
library(Cairo)

data <- read.csv("./data/ExcelFormattedGISTEMPDataCSV.csv", na.strings = c("***","****"))

plot <- ggplot(data, aes(x = Year, y = J.D, color=DJF)) + theme_bw() +
  geom_jitter() + geom_smooth() + 
  scale_colour_gradient(low="#08306b", high="#f7fbff", space="Lab", "Winter mean (°F)") +
  labs(title = "Global Annual Mean Temperature 1880—2015", y = "°F")

CairoPNG(filename="plot.png", width=800, height=666)
plot 
dev.off()
