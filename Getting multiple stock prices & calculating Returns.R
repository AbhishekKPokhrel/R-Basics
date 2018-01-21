library(pdfetch)
library(xts)
library(PerformanceAnalytics)
library(BatchGetSymbols)


data<- pdfetch_YAHOO(identifiers= c('TSLA','GOOGL'),fields= c('adjclose','volume'))

tesla<- data[ , c("TSLA.adjclose", "TSLA.volume")] #or tesla<- data[ , 1:2]
tesla<- na.trim(tesla)
google<- data[ , 3:4]
#combined<- ts.intersect(tesla, google, dframe= FALSE)

tesla_ret<- Return.calculate(tesla) * 100 #or t_ret_simple<- diff(tesla)/lag(tesla, k=1) *100
tesla_ret<-ret <- na.trim(tesla_ret)

#Dividing Tesla data into Adj close & Volume
tesla.close<- tesla$TSLA.adjclose
tesla.volume<- tesla$TSLA.volume

#Seperate daily returns
tesla_ret<- Return.calculate(tesla.close)
