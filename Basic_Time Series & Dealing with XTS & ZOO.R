
rm(list = ls()) #To remove the variable lists created #Ctrl + L to clear console

library(xts)
library(PerformanceAnalytics)
toDate <- function(x) as.Date(x, origin = "1899-12-30") #Importing from Excel on Windows, the origin date is December 30, 1899 for dates after 1900
z <- read.zoo("T_Daily.csv", header = TRUE, sep = ",", FUN = toDate) #FUN= uses toDate function to compute index in 1st column as date format; check by str(z)
TSLA_daily<- as.xts(z)

returns<- Return.calculate(TSLA_daily)
returns<- (returns[-1, ])

head(returns)
returns[which.max(returns)] #Gives the Date and returns on date where the max return occured
#Can also google search what happened on the date for return to be max
summary(returns) #Considers the index values as well i.e. the Date
summary(coredata(returns)) #Considers only the returns not the date

quantile(returns, probs= 0.01)*100 #Only 1% probability that on any given day TESLA stock falls by more than 7.31%

returns<- na.omit(returns) 
plot(density(returns)) #Plotting the density function

charts.PerformanceSummary(returns) #For charts feed returns not stock price

TSLA_daily17<- window(TSLA_daily, start= '2017-01-01', end= '2017-12-31') #Subsetting data; includes only year 2017
tail(TSLA_daily17)

TSLA_daily17[which.min(TSLA_daily17)]
TSLA_daily17[which.max(TSLA_daily17)]
summary(TSLA_daily17)
