
library(quantmod)
library(PerformanceAnalytics)
#Return.calculate To compute the asset returns
#Return.portfolio to compute the portfolio return


TSLA <- dailyReturn(Ad(getSymbols("TSLA", auto.assign = F)))
charts.PerformanceSummary(TSLA)

GOOGL<- dailyReturn(Ad(getSymbols("GOOGL", auto.assign = F)))
charts.PerformanceSummary(GOOGL)

colnames(TSLA)<- "TSLA"
colnames(GOOGL)<- "GOOGL"

data1<- merge(TSLA, GOOGL) #Merges all the values even the ones where Tesla didn't start trading
head(data1)
dim(data1) # answer= Days alltogether

data<- merge(TSLA, GOOGL, all = F) #Merges from the time both stocks traded
head(data)
dim(data) #answer= Days they both traded

charts.PerformanceSummary(data)
table.AnnualizedReturns(data, scale = 252, Rf= 0.025/252) #Using risk-free rate of 2.5%

