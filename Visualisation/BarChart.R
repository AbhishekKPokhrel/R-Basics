library(ggplot2)
df<- mpg

pl<- ggplot(df, aes(x= class))

pl2<- pl + geom_bar(fill= '#879baf')
pl2

pl3<- pl+ geom_bar(aes(fill= drv)) #Bars Stacked on top of each other
pl3
pl4<- pl + geom_bar(aes(fill=drv), position = 'dodge') #Bars Stacked side to side to each other
pl4
pl5<- pl + geom_bar(aes(fill=drv), position = 'fill') #Shows the percentage of instances
pl5
