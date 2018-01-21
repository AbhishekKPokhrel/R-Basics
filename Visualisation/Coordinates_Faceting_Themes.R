library(ggplot2)
library(ggthemes)

theme_set(theme_economist()) #To set the theme for everything
pl<- ggplot(mpg, aes(x= displ, y= hwy)) + geom_point()
pl + theme_economist() #To set theme for specific function

pl2<- pl+ coord_cartesian(xlim = c(1,4), ylim= c(15,30))
pl2

pl_faced<- pl+ facet_grid(drv ~ .)
pl_faced
