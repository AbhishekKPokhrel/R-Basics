dataset= read.csv('train.csv')

# Taking care of missing data
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)

write.csv(dataset, file = "C:/Users/user/Desktop/R/a.csv", row.names = FALSE)