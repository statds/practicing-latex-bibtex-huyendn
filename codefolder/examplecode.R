data("mtcars")
summary(mtcars)

with(mtcars, table(gear, cyl))

library(ggplot2)
my.plot <- ggplot(data = mtcars, aes(x = qsec, y = drat)) + geom_point(color = "blue") + 
  ggtitle("Rear axle ratio vs 1/4 Mile Time") +
  xlab("Time (sec)") + 
  ylab("Rear Axle Ratio") 

my.plot + geom_smooth(method = "lm")
