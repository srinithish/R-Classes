
# Loops









ctrl<-1

while(ctrl<7) {
  print(paste("The ctrl is",ctrl))
  ctrl<-ctrl+1
}





speed<-90

while (speed>30) {
  print(paste("Speed is",speed))
  print ("Too fast, slow down!")
  speed<-speed -10
}





cities<-c("New York","Paris","London", "Tokyo",
          "Rio de Janerio", 
          "Cape Town")
cities



View(cities)

for(city in cities) {
  print(city)
}


for (i in 1:length(cities)) {
  if (nchar(cities[i]) == 6) {
    next }
  print (cities[i])
}


for(city in cities) {
  if (nchar(city) == 6) {
    break }
  print(city)
 }



for(city in cities) {
  if (nchar(city) == 6) {
    next }
  print(city)
}






# Pre-defined variables - Find the count of the number of
# letter e is present before the period (.)

quote <- c("It was the best of times. It was the
           worst of times")
chars <- strsplit(quote, split = "")[[1]]
chars
class(chars)


# Initialize count
count <- 0

# Finish the for loop
for (char in chars) {
  if(char =="e"){
    count=count+1
  }
  if (char=="."){
    break}
}
count









## Functions


?sd
args(sd)





sd(c(1,2,3,4))
sd(c(1,2,3,NA,4))



sd(c(1,2,3,NA,4),na.rm=T)








# Create my_fun () function
my_fun <- function(x,y) {
  (x*y)+(x/y)
  
}

my_fun(2,a)

my_fun(1,2)

my_fun(2)



# Creating default values in arguments



my_fun(1)

my_fun <- function(x,y=1) {
  z<-(x*y)+(x/y)
  return(print("No"))
}

my_fun(2)

# Arguments by position and arguments by label



my_fun <- function(x,y,print_out=T) {
  a<-(x*y)
  b<-(x/y)
  z<-a+b
  if(print_out==T){
    print(paste("The final value is", z))
  }else{
  return (z)}
}

my_fun(2,print_out = T)

dir()


# Create a function which prints "Hi there!" without 
# any inputs from the user
# Create a function called normalize which will change 
# all values to between 0 and 1




hello<-function(){
  print("Hi there!")
  }

hello()











normalize<- function(x){
  return((x-min(x))/(max(x)-min(x)))
}
normalize(c(1,2,3,4,5))
normalize(c(10,20,30,40,50))




## Apply functions

lapply
sapply




# Vector of Names and year of birth
pioneers <- c("GAUSS:1777", "BAYES:1702", 
              "PASCAL:1623", "PEARSON:1857")








# Split names from birth year
split_math <- strsplit(pioneers, split = ":")
split_math




# Convert to lowercase strings: split_low
split_low<-lapply(split_math,tolower)
split_low





bcd<-sapply(cities,toupper,USE.NAMES = F)
bcd



View(iris)







iris2_z<-as.data.frame(lapply(iris[1:4],normalize))








## Importing datasets


getwd()
setwd("/Users/antonycherian/Documents/Redwood/ATI/Training/R")
dir()


read.table("/Users/antonycherian/Documents/Redwood/ATI/Training/R/State.txt",header = T,sep="\t",stringsAsFactors = F)
read.delim("/Users/antonycherian/Documents/Redwood/ATI/Training/R/State.txt",stringsAsFactors = F)

read.table("/Users/antonycherian/Documents/Redwood/ATI/Training/R/States.csv",header=T,sep=",",stringsAsFactors = F,)
read.csv("/Users/antonycherian/Documents/Redwood/ATI/Training/R/States.csv",stringsAsFactors = F,)

read.csv(file.choose())

read.csv2()
col.names
colClasses 





library(readxl)
dir()
excel_sheets("Excel_Trial.xlsx")

read_excel("Excel_Trial.xlsx")

read_excel("Excel_Trial.xlsx",sheet = 2)
read_excel("Excel_Trial.xlsx",sheet = "States")

read_excel("Excel_Trial.xlsx",sheet = 2,col_names = c("State","Cap","Pop","Area"),col_types = NULL,skip=2)

read_excel("Excel_Trial.xlsx",sheet = 2,col_names = T,col_types = c("text","text","text","text"),skip=0)


# numeric
# date
# blank


library(xlsx)

read.xlsx("Excel_Trial.xlsx")
sales<-read.xlsx("Excel_Trial.xlsx", sheetIndex = 1,startRow = 2,endRow = 7,colIndex = c(1,2),header = T,colClasses = c("character","character"))

write.xlsx(sales,"Excel_Trial.xlsx",sheetName = "Sales2",append=T)






  
  
  
  