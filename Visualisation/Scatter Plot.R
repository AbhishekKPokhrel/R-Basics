library(ggplot2)
df<- mtcars
head(mtcars)

#Data & Aesthetics Layer
pl<- ggplot(df, aes(x= wt, y=mpg))

#Geometry
pl2<- pl+ geom_point(aes(shape= factor(cyl), color= factor(cyl)), size=3)
pl2

pl3<- pl + geom_point(size= 3, color= '#879baf') #Using hex color
pl3

pl4<- pl + geom_point(aes(color=hp), size= 3)
pl4
pl5<- pl4 + scale_color_gradient(low= 'blue', high= 'red') #Needs hp in aes color
pl5

#Housing Data Plot:
head(txhousing)

pl<- ggplot(txhousing, aes(x=sales, y= volume))
pl2<- pl + geom_point(color= 'blue', alpha= 0.3)
pl2
pl3<- pl2 + geom_smooth(color= 'red')
pl3
