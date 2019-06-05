data() #Gives names of all built-in DataFrame 
iris #TO display the built in dataframe
str(df) #Gives the structure of the Data
summary(df) #Gives Statistical Summary for all the COlumns of the Dataframe

head(df)
head(df,10) #Select the 1st 10 rows
df[1:10, ] #Select the 1st 10 rows
df[-2. ] #Selects everything but the 2nd row of the df


##############
## Creating a DataFrame
#############

days<- c('Mon', 'Tue', 'Wed', 'Thur', 'Fri')
temp<- c(23.1,22.4,24.2,20.5,21.5)
rain<- c(T,F,T,T,F)
df<- data.frame(days,temp,rain)

colnames(df)<- c('days','temp','rain') #To rename a vector of columns of a DataFrame
colnames(df)[1]<- 'days' #To rename a single column, in this case the 1st column

str(df)
summary(df)


###############
## DataFrame Indexing & Selection
###############
df[1,] #Returns all Columns of 1st row
df[,1] #Returns all rows of 1st column
df[,'rain'] #Reruns all the rows of the rain column

df[1:5, c('days', 'temp')] #Returns all rows of days & temp column in a DataFrame format
df[c('days','temp')]

df$rain  #returns all rows in a vector format
df[,'rain']
df[, 3] 
df[['rain']]
df[[3]] #This equals df[ ,1]


df['rain'] #returns all rows in a Dataframe format of the rain column
df[3] #3rd column not row



subset(df, subset= rain==TRUE) #Returns a Dataframe where the condition rain==True is satisfied
subset(df, subset= temp>23)

#### Sorting data
sorted.temp<- order(df['temp'])
sorted.temp #Returns the index of the sorted value, i.e here temp in 4th row is the lowest followed by 5th
df[sorted.temp,] #Returns DataFrame sorted by temp

#For Descending order
desc.temp<- order(-df['temp'])
desc.temp
df[desc.temp,]


##########
## DataFrame Operations
#reference a particular cell in a Dataframe
df[[5,2]] #Returns value in row 5 column 2

df[[5, 'temp']] #Using column names

#Assign some other value on the particular cell
df[[5,'temp']]<- 20.9


## Adding new Rows
df1<- data.frame(days= c('Sat','Sun'),temp= c(25.1,23.5), rain= c(F,T))
df1
df<- rbind(df,df1)
df


### Adding new Column
df$windy<- c('Yes','Yes','No','Yes','No','No','No')


### Conditional Subsetting 
df[df$temp>23, ] #Returns in a Dataframe all temp>0

