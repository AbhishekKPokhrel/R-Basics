library(ggplot2)
library(ggplot2movies)

pl<- ggplot(movies, aes(x= year, y=rating))

pl2<- pl+ geom_bin2d() + scale_fill_gradient(high= 'red', low='green')
pl2

pl3<- pl+ geom_hex() + scale_fill_gradient(high= 'red', low='green')
pl3

