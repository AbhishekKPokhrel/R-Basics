library(ggplot2)
library(ggplot2movies)

df<- ggplot(movies)

#Building up the Layers
#1_Data & Aesthetics
pl<- ggplot(movies, aes(x=rating))

#2_Geometry
pl2<- pl + geom_histogram(binwidth = 0.1, aes(fill=..count..))

pl3<- pl2 + xlab('Movie Rating') + ylab('Count') + ggtitle('Movies')
pl3

