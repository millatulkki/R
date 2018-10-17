library(ggplot2)
library(grid)

file <- read.table("bloodpressure.csv", sep=";", header=T)

ages <- file$age
weights <- file$weight
pressures <- file$systolic.blood.pressure

theme_set(theme_bw())
plot1 <- ggplot(file, aes(x=ages, y=pressures)) +
  geom_point() +
  labs(title="Aging on Blood Pressure and Weight",
       subtitle="Age Vs Blood Pressure",
       y="Systolic Blood Pressure",
       x="Age")

plot2 <- ggplot(file, aes(y=weights, x=age)) +
  geom_point() +
  labs(subtitle="Age Vs Weight",
       y="Weight",
       x="Age")

jpeg("aging_plot.png")
grid.newpage()
grid.draw(rbind(ggplotGrob(plot1),ggplotGrob(plot2),size = "last"))
dev.off()