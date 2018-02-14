library(faraway)
data("divusa")
head(divusa)
mydata<- data.frame(divusa[, -1])
head(mydata)

round(cor(mydata),2)

multiple_reg<- lm(divorce~., mydata)
multiple_reg
summary(multiple_reg)

vif(multiple_reg) #To check for multicollinearity; severe multicollinearity occurs when VIF>10

