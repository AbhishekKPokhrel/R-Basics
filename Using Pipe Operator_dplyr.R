#Pipe Operator useful when operating with dplyr library
library(dplyr)
df<- mtcars

#Nesting
result<- arrange(sample_n(filter(df, mpg>20), size=5), desc(mpg))
result

#OR use Multiple Assignments:
a<- filter(df, mpg>20)
b<- sample_n(a, size=5)
result1<- arrange(b, desc(mpg))
result1


# OR Using Pipe Operator: Data %>% operation1 %>% operation2 %>% operation3 -> create a pipeline of the operations
result<- df %>% filter(mpg>20) %>% sample_n(size= 5) %>% arrange(desc(mpg))
result
