#Main Functions of Tidyr:
#gather()
#Separate() 
#Unite()

library(tidyr)
library(data.table)

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
df

#gather() Collapses multiple columns into key pair of values
df.gather<- gather(df, Quarter, Revenue, Qtr1:Qtr4) #Makes Qtrl as key and the values as Revenue
spread(df.gather, Quarter, Revenue) #To un-gather

#Separate()
df<- data.frame(new.col= c(NA, 'a-x', 'b-y', 'c-z'))
df.sep<- separate(data= df,col= new.col,into= c('ABC', 'XYZ'), sep='-')

#Unite() combine multiple columns
unite(df.sep, new.joined.col, ABC,XYZ, sep= '---')
