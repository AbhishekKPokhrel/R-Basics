###To see the datasets available in the package
    ##library(ChainLadder)
    ##data(package= 'ChainLadder')


library(pdfetch)
library(xts)
library(PerformanceAnalytics)

data<- pdfetch_YAHOO(identifiers= c('TSLA','GOOGL'),fields= c('adjclose','volume'))
returns<- Return.calculate(data)
head(returns)
returns<- na.omit(returns)
head(returns)

df<- as.xts(data)
is.xts(df)

df_adj<- df$TSLA.adjclose
df_vol<- df$TSLA.volume

returns_adj<- returns$TSLA.adjclose
head(returns_adj)

plot(df_adj)
