"""
Regular Expressions_ Check whether some value/text/pattern is present

grepl :Returns Boolean values i.e True or False
grep  : Returns index location """ 
v<- c('a','b','c','d','d')
grepl('b', v) #Returns a vector of True & False; True where b is present

#To get the index where its true i.e where b occurs
grep('b', v)
 