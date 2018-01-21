'''Built in R Features & Functions

seq(): Create sequences
sort():Sort a vector
rev(): Reverse elements in object
str(): Show the structure of an object 
append():Merge objects together (works on vectors & lists)'''

#Using seq:
seq(0,100, by=10)

#Using sort:
v<- c(1,4,5,2,13,3,14,9)
sort(v, decreasing = TRUE)

#Using rev:
v<- 1:10
rev(v)

#Using append:
v<- 1:10
v2<- 35:40
append(v,v2)

