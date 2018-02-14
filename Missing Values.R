#df represents the dataframe

#Transforming ? values to NA values
df[df== '?']<- NA

library(Amelia) #Package to visualise Missing Data

##Creating Missing values plot with missmap
missmap(df, y.at = c(1), y.labels = c(''), col= c('yellow', 'black'))

#####
names(which(sapply(df, anyNA))) #Gives the names of the comlumns which contain missing data 
sum(is.na(df$columnName)) #Count the total NA values in a given column
sum(is.na(df)) #Gives the total NA values in a given dataframe
#####

#To count total number of TRUE values for a TRUE/FALSE Logical matrix
#example:
mat<- is.na(df)
table(mat)['TRUE'] 
####

a<- complete.cases(df) #Returns a vector from the dataframe which have no Missing Values

#Drop missing values i.e the entire row containing NA
df<- na.omit(df)


###Omit Row containing NA value for specific columns
#Example: To omit the row if only y has NA
DF <- data.frame(x = c(1, 2, 3), y = c(0, 10, NA), z=c(NA, 33, 22))
DF<-DF[!is.na(DF$y),]
DF


### Replace NA values by the column mean
for(i in 1:ncol(df)){
  df[is.na(df[,i]), i] <- mean(df[,i], na.rm = TRUE)
}


#For individual columns:
df$Column1[is.na(df$Column1)] <- round(mean(df$Column1, na.rm = TRUE))

df$Column1[is.na(df$Column1)] <- round(median(df$Column1, na.rm = TRUE)) #For Median

