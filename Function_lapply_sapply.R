setwd("C:\\Users\\user\\Desktop\\R\\Basics")
rm(list = ls()) #To remove objects from the specified environment e.g variables from previous workings

#Using Apply function: Apply a Function over a List or Vector
?sample
print(sample(x=1:100, 3)) #Select 3 random numbers from range 1 to 100

v<- c(1,2,3,4,5)

addrand<- function(x) {
  ran<- sample(1:100,1)
  return(x+ran)
}

result<- lapply(v, addrand) #Gives list of value returned by applying the addrand function to v
print(result)
result1<- sapply(v,addrand) #Gives a vector of value
print(result1)

#Eg 2
v<- 1:5
times<- function(x) {
  return(x ** 2)
}
result<- sapply(v, times)
print(result)


#Apply with multiple inputs:
v<- 1:5
add_choice<- function(num, choice){
  return(num+choice)
}
print(sapply(v, add_choice, choice= 100)) #choice= '_' is needed because add_choice function will consider v as num and nothing is left for choice
                   # So the process is vector, function, & any additional arguments with values you want to put eg 100 in this case

