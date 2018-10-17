library(ggplot2)
library(grid)

file <- read.table("bloodpressure.csv", sep=";", header=T)

ages <- file$age
weights <- file$weight
pressures <- file$systolic.blood.pressure

theme_set(theme_bw())
# first plot to illustrate how blood pressure changes as aging
plot1 <- ggplot(file, aes(x=ages, y=pressures)) +
  geom_point(shape=1) +
  geom_smooth(method="lm") +
  labs(title="Aging on Blood Pressure and Weight",
       subtitle="Age Vs Blood Pressure",
       y="Systolic Blood Pressure",
       x="Age")

# second plot to show how also weight is changing
plot2 <- ggplot(file, aes(y=weights, x=age)) +
  geom_point(shape=1) +
  geom_smooth(method="lm") +
  labs(subtitle="Age Vs Weight",
       y="Weight",
       x="Age")

jpeg("aging_plot.png")
grid.newpage()
grid.draw(rbind(ggplotGrob(plot1),ggplotGrob(plot2),size = "last"))
dev.off()