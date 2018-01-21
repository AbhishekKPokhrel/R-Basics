'''Dates & Timestamps
%d Dat of the month
%m Month (decimal number)
%b Month (abbreviated)
%B Month (Full name)
%y Year (2 digit)
%Y Year (4 digit)
'''

today<- Sys.Date() #Returns today's day format= yyyy-mm-dd
class(today) #Shows class as Date

c<- "2018-01-01"
class(c) #Shows class as character
my.date<- as.Date(c) #Converting c into dates class
class(my.date) #Shows class as Date

#The above conversion was for dates already in the standard format
#For dates not in standard format e.g Nov-03-90, do the following:
my.date<- as.Date("Nov-03-90", format= "%b-%d-%y") #format= is the format that the non standard date was in i.e Month abbreviated(b), day(d) & year 2digit(y) in this case
my.date

as.Date('June,1,2002', format= '%B,%d,%Y')
as.Date("1June 2002", format= '%d%B %Y')

#R uses POSTXlt & POSTXct datatypes to store time information ; Portable Operating System Interface
#Uses POSTXct to convert strings into datatypes or timestamp information to use for time series analysis

as.POSIXct("11:02:03", format= "%H:%M:%S")
a<- as.POSIXct("2012-12-19 18:00:00", format= "%Y-%m-%d %H:%M:%S")
class(a)

#Getting only Year/month/hour etc:
format(a, '%H')
format(a, '%Y')
#Mainly used one is strptime function
help("strptime") #TO check the codes for formatting i.e what D,b,m ; H,M,S & others mean
strptime("11:02:03", format= "%H:%M:%S")






