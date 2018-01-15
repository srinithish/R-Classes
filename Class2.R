install.packages("xlRead")
new = c(1,"new",TRUE)
class(new) 
new = C(3,TRUE)
class(new)
library("xlsx")
r = c(2,4,5,6)
s=c(1,2,3,4)
k =r+s
k
install.packages("rJava")
library("xlsx")
setwd()
getwd()
dir()
stateData = read.table("State.txt",header = TRUE , sep = "\t",stringsAsFactors = F)
stateData
read.delim("State.txt", stringsAsFactors = F)
library("xlsx")
install.packages("readxl")
library("readxl")
library("XLConnect")
excel_sheets("Excel_Trial.xlsx")
wb = loadWorkbook("Excel_Trial.xlsx")
getSheets(wb)
a =  read_excel("Excel_Trial.xlsx",sheet = 1 , col_names = T,col_types = c("text","date","numeric"))
#a2 = read_excel("Excel_Trial.xlsx",sheet = 1, col_names = c("something1","something2","something3","something4"),)
?read_excel
write.xlsx(slaes,"Excel_Trial.xlsx",sheetName = "Sales2",append = T)
?write.xlsx
TRUE == TRUE
"a" == "a"
TRUE && TRUE
TRUE || TRUE
TRUE != TRUE
data()
mtcars
mtcarsdup =mtcars
new = mtcarsdup[(mtcarsdup["cyl"] >= 6 & mtcarsdup["hp"] >=200) , ]
nrow(new)

new2 = mtcarsdup[(mtcarsdup["hp"]> 300 | mtcarsdup["hp"] < 100),]

nrow(new2)
subset(mtcars,hp >300 | hp<100)
if (TRUE)
{"hello"}else  #note that the else statement has to start after the braces and not in the nextline
{"nohelllo"}
sale
a= data.frame(c(0))
sales = c (1000,2000,3000)
sales = 2000
if (sales > 1000)
{"TRUE"}else if (sales > 800)
{
  "200%"
}else if(sales > 500 )
  {
  "50%"
}else {
  "nothing "
}

ifelse("test","ifyes","ifno")  
#easier way of writing the if  statement also its 

#if else in practice   
category = ifelse(mtcarsdup["hp"] > 300 ,"Veryfast",ifelse(mtcarsdup["hp"] > 200, "fast",ifelse(mtcarsdup["hp"]>100,"medium","slow")))
category
table(category)
mtcarsdup[,"category"] = category
mtcarsdup$category

#while loops 
ctrl = 1
while(ctrl<7){
print(paste("ctrl is",ctrl))
  ctrl = ctrl+1
}

cities = c("NewYork","Paris","London","Tokyo","Rio de Janeio","Cape Town")
#for loop implementation

for(i in 1:length(cities))
{"hello"}
#to use for wih increments use sequence function

for (i in 1:length(cities)){
  if (nchar(cities[1])==7){
    
    #print (cities[i])
    next
  }
  print (cities[i])
}

quote = c("It was the best of times.
          It was the worst of times")
#to split the characters in a striing and access them
characters = strsplit(quote, split = "")[[1]]
count = 0
characters[4]
for (i in characters ){
  print(i)
  if(i == "e")
    {count = count + 1
   
     }
  if(i == ".")
  {
    break
  }
}
count
table(characters)

#funcitons discussion 

sd(c(1,2,3,4))
#creating function

my_fun = function(x,y)
{return((x*y)+(x/y))}

my_fun(2,3)
hello = function()
{print("hi there")}
hello()

vect1 = c(1,2,3,4,5,6,7,8,9,10)

normalise = function(vect)
{
  vect = (vect - min(vect))/(max(vect)-min(vect))
  return(vect)
}
x = normalise(vect1)
x  


#dates important

a= as.Date("2012-11-23")
a
a= as.Date("2012/11/23")
a
a= as.Date("88-11-23")
a
a = as.Date("12/11/23")
a
a = as.Date("11-23-2012")
a
a = as.Date("11/23/2012")

#functions with dates

weekdays(a)
months(a)
quarters(a)
?strptime
date = strptime('11/Nov/2015:07:51:00',format = "%d/%b/%Y:%H:%M:%S")
class(date)
date

?read.xlsx
dateSheet =read.xlsx("Dates.xlsx",sheetIndex = 1) 
dateSheet
summary(dateSheet)
str(dateSheet)
dateSheet$X.DateTime = as.character(dateSheet$X.DateTime)
class(dateSheet$X.DateTime)
dateSheet$RecordDate2 = as.character(dateSheet$RecordDate2)
dateSheet$RecordDate3 = as.character(dateSheet$RecordDate3)
str(dateSheet)
?strptime
newDatetime = strptime(dateSheet["X.Datetime"],format = "%d/%m/%Y ") #get the script file 


######joins or meging ###############



P= data.frame(Id = c(101,102,103,104), name = c("a","b","c","d"))
Q = data.frame(id1 = c(103,104,105,106),
               Age = c(24,25,23,34))
P
Q
?merge
   #full joins of the data both x and y are trues.

Dotal = merge(P,Q,by.x = "Id",by.y = "id1" , all.x = TRUE ,all.y = TRUE)
Dotal

# to merge the data frames by multiple columns usse by.x = c("unique fiield 1","unique field 2")


#spread function in R from tidy package


library("tidyr")
library("dplyr")

messy = read.csv("messy_data.csv")
head(messy)
messy = spread(messy,type,value)
messy
messy2 = spread(messy, year,c(cases,population))


# Wide to long data frame 
?spread
messy3 = gather(messy, "type" , "value" , -c(Country,year))
#here type , value is the column names that the gathered info ie -c(country,year) is put into
messy
messy3

## go thorugh these functions 
?gather
?separate
?unite

###############funtions for dplyr###########

select(t1 , Country, cases)
select(t1 , starts_with("p"))
?select #look into starts_with and all that 
?slice
?filter
?group_by()
?mutate
t1 %>% group_by(Country) %>%summarize(Case.Mean =mean(cases))