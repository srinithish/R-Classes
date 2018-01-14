
# NA, NaN, NULL, Inf

# NA - Not Available
# NaN - Not a Number
# NULL - does not exist
# Inf - Infinity

c(1/0, -1/0)


c(Inf+1, Inf-1, Inf-Inf, 1/Inf, Inf/100, Inf/Inf)


c(sqrt(-1), sqrt(Inf), 0/0)


c(log(Inf), log(0), exp(Inf), exp(-Inf))


x <- c(10,12,234,NA)
mean(x)

mean(x,na.rm=TRUE)


x <- c(10,12,234,NaN)
mean(x)

x <- c(10,15,20,NULL)
mean(x)

class(x)
class(NA)
class(NaN)
class(NULL)



length(NA)
length(NaN)
length(NULL)


students<-list(Eric=95, Joseph=90, Sean=91,Eva=100)
students
students$Eva<-NULL
students$Eric<-NA
students





## Importing datasets


getwd()
setwd("/Users/antonycherian/Documents/ATI/R-course-material")
dir()


read.table("/Users/antonycherian/Documents/Redwood/ATI/Training/R/State.txt",header = T,sep="\t",stringsAsFactors = F)
read.delim("/Users/antonycherian/Documents/Redwood/ATI/Training/R/State.txt",stringsAsFactors = F)

read.table("/Users/antonycherian/Documents/Redwood/ATI/Training/R/States.csv",header=T,sep=",",stringsAsFactors = F,)
read.csv("/Users/antonycherian/Documents/Redwood/ATI/Training/R/States.csv",stringsAsFactors = F,)
read.csv()
read.csv(file.choose())

read.csv2()
col.names
colClasses 





library(readxl)
dir()
excel_sheets("practice.xlsx")

read_excel("practice.xlsx")

a<-read_excel("practice.xlsx",sheet = 1,col_names = F)
read_excel("practice.xlsx",sheet = "Sheet2")
names(a)
View(a)
read_excel("Excel_Trial.xlsx",sheet = 2,col_names = c("State","Cap","Pop","Area"),col_types = NULL,skip=2)

read_excel("Excel_Trial.xlsx",sheet = 2,col_names = T,col_types = c("text","text","text","text"),skip=0)


# numeric
# date
# blank


library(xlsx)

read.xlsx("Excel_Trial.xlsx")
sales<-read.xlsx("Excel_Trial.xlsx", sheetIndex = 1,startRow = 2,endRow = 7,colIndex = c(1,2),header = T,colClasses = c("character","character"))

write.xlsx(sales,"Excel_Trial.xlsx",sheetName = "Sales2",append=T)
write.xlsx(mtcars,'MTCars.xlsx')




#Logical Operators

TRUE == TRUE
TRUE == FALSE
FALSE == TRUE
"A"=="a"
"a" == "a"




TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE


T |T
TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE


! TRUE
!FALSE



# Powerful cars have hp over 200 and have 6 or
# more cylinders (7)

# I want to know the most powerful cars (over 300 hp) 
#and the least powerful cars (10)
# (less than 100 hp)








mtcars[mtcars$hp>200 & mtcars$cyl>=6,]
subset(mtcars,hp>300 | hp <100)





y<-5
z<-7
!(!(y<4) & !!!(z>12))






# Conditional statements

val<- -2

if (val>=0){
  print("postive number")
}else {
  print("negative number")
}




# Bonus applicable
# Greater than 1000 units - 200% bonus
# Between 801 and 1000 units - 100% bonus
# Between 501 and 800 units - 50% bonus
# Less than 500 units - no bonus


# Assume initial sales is 2000






sales<-2000

if (sales>1000){
  print("Eligible for 200% bonus")
}else if(sales <=1000 & sales>800){
  print("Eligible for 100% bonus")
}else if(sales<=800 & sales>500){
  print("Eligible for 50% bonus")
}else{
  print("Not eligible for bonus")
}




?ifelse
# Create a new variable in the cars dataset
# called category and classify cars as 
# Very Fast (greater than 300 hp)
# Fast (between 201 and 300 hp)
# Medium (between 101 and 200 hp)
# Slow (less than 100 hp)
# Find the count of each category









a<-mtcars




a$category<-ifelse(a$hp<100,"Slow",
       ifelse(a$hp>=100 & a$hp<200,"Medium",
              ifelse(a$hp>=200 & a$hp<300,"Fast","Very Fast")))


a$category<-as.factor(a$category)
table(a$category)



b<-mtcars
b$category<-"Slow"
b$category[b$hp>100]<-"Medium"
b$category[b$hp>200]<-"Fast"
b$category[b$hp>300]<-"Very Fast"
View(b)


b$category<-as.factor(b$category)


table(b$category)























