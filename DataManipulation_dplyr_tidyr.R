'''
Data Manipulation Overview
Dplyr: Manipulating Data
Tidyr: Cleaning Data
Pipe Operator %>% for further Syntax Simplification
'''
#DPLYR
#Filter() (and slice())
#arrange()
#select() (and rename())
#distinct()
#mutate() (and transmute())
#summarise()
#sample_n(), sample_frac()
library(dplyr)
library(nycflights13)

head(filter(flights, month==11, day==3, carrier=='AA')) #Filtering data based on conditions; the dplyr filter is used
slice(flights,1:10) #Slice will return rows by position

head(arrange(flights, year, month, day, arr_time)) #arranges the selected columns in ascending order
head(arrange(flights, year, month, day, desc(arr_time))) #To arrange only one column in this case arr_time in descending order
  
head(select(flights, carrier, arr_time)) #Selecting the columns

head(rename(flights, airline_carrier= carrier)) #Renaming carrier as airline_carrier

distinct(select(flights, carrier)) #Returns unique values in the data , in this column the distint carrier names

head(mutate(flights, new_col= arr_delay-dep_delay)) #Creating new column& mutate returns the entire dataframe along with new column
head(transmute(flights, new_col= arr_delay-dep_delay)) #Returns only the new column

summarise(flights, avg_air_time= mean(air_time, na.rm = TRUE)) #Funtion giving aggregate result
summarise(flights, total_air_time= sum(air_time, na.rm = TRUE))

sample_n(flights, 10) #Gives 10 random rows from the dataset
sample_frac(flights, 0.1) #returns 10% of random rows from the dataset


