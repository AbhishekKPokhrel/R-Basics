library(ggplot2)
df<- mtcars

pl<- ggplot(df, aes(x= factor(cyl), y= mpg))

p2<- pl+ geom_boxplot()
p2
p2_hor<- pl+ geom_boxplot() + coord_flip() #To flip plot horizontally
p2_hor

p3<- pl+ geom_boxplot(aes(fill= factor(cyl))) + theme_dark() #Coloring based on cylinders
p3
