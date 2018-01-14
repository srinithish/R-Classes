
## Importing datasets


getwd()
setwd("/Users/antonycherian/Documents/Redwood/ATI/Training/R")



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
read_excel("Excel_Trial.xlsx",sheet = 2,col_names = F,col_types = NULL,skip=2)

read_excel("Excel_Trial.xlsx",sheet = 2,col_names = T,col_types = c("text","blank","text","text"),skip=0)


# numeric
# date
# blank


library(xlsx)

read.xlsx("Excel_Trial.xlsx")
sales<-read.xlsx("Excel_Trial.xlsx", sheetIndex = 1,startRow = 2,endRow = 7,colIndex = c(1,2),header = T,colClasses = c("character","character"))

write.xlsx(sales,"Excel_Trial.xlsx",sheetName = "Sales2",append=T)






## Dates


a<-as.Date("2012-11-23")
a
a<-as.Date("2012/11/23")
a
a<-as.Date("88-11-23")
a
a<-as.Date("12/11/23")
a
a<-as.Date("11-23-2012")
a
a<-as.Date("11/23/2012")
a




## Default format is YYYY-MM-DD


## functions with dates
weekdays(a)
months(a)
quarters(a)


## Adding or subtracting days

a+1

a-24


class(a)



## format options

# %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)

?strptime
# converts character to POSIXlt
date <- strptime('11/Nov/2015:07:51:00',format="%d/%b/%Y:%H:%M:%S")
class(date)
date

format(date,"%A, %d %b, %Y")


#non standard formats

a<-as.Date("11/23/2012",format="%m/%d/%Y")
a

b<-as.Date("2013-10-4")


b-a


difftime(b,a,units="weeks")


# POSIXct

a<-as.POSIXct("2015-11-23 10:20:43")
as.POSIXct("2015-11-23 10:20:43",tz="GMT")

Sys.Date()
Sys.time()
now()
today()

# POSIXlt

b<-as.POSIXlt("2015-11-23 10:20:43")
a
b
class(b)
b$wday

unlist(b)







library(xlsx)

D<-read.xlsx("/Users/antonycherian/Documents/Redwood/ATI/Training/R/Dates.xlsx",sheetIndex = 1)
D
str(D)






D$X.DateTime<-as.character(D$X.DateTime)
D$X.DateTime<-as.POSIXct(strptime(D$X.DateTime,format="%d/%m/%Y %I:%M:%S %p"))
D$RecordDate3<-as.character(D$RecordDate3)
D$RecordDate3<-as.POSIXct(strptime(D$RecordDate3,format="%d%m%Y"))







# merging two datasets

#1.Full merge - both the data sets get merged and all observations get displayed
#2.Inner Merge - the common data gets merged together to one new data set
#3.Left outer Merge - takes only left data set's observations
#4.Right outer Merge - takes only right data set's observations






#lets create two data sets
P = data.frame(Id = c(101,102,103,104), name = c("a","b","c","d"))
Q = data.frame(id1 = c(103,104,105,106), Age = c(24,25,23,34))
P
Q


View(P)
View(Q)

# Full Merge
Data1<-merge(P, Q,by.x="Id",by.y="id1", all.x=TRUE, all.y=TRUE) # All = true 







Data1



View(Data1)









# Inner Merge  (skip the last argument of all=true) / use x/y as keywords
merge(P, Q, by.x= "Id", by.y = "id1")









# Left Merge
merge(P, Q, by.x = "Id",by.y= "id1", all.x=TRUE)





#Right Merge
merge(P, Q, by.x = "Id",by.y= "id1",all.y=TRUE)
-----------------------------------------

  
  
  
  
  
  
  
  ## grep and grepl
  
  emails <- c("john.doe@iv23yleague.edu", "1masters@world12.gov", "un.who@peace.org", 
              "invalid.edu", "Socialmedia@university.edu", "big.ten@foxsports.tv")







grepl("edu",emails)


grep("edu",emails)


## Subset the vector for only email ids ending with .edu


emails[grepl("@.*\\.edu$",emails)]

grep("@.*\\.edu$",emails,value = T)







## sub and gsub

sub("e","x",emails)

gsub("e","x",emails)








### Transforming datasets


messy<-read.csv("messy_data.csv")
str(messy)
summary(messy)
View(messy)
library(tidyr)
library(dplyr)
## Long to wide using spread


messy
t1<-spread(messy,type,value)

View(t1)



### Wide to long using gather

t2<-gather(t1,"Item","value",c(cases,population))
View(t2)
t3<-gather(t1,"type","value",-c(Country,year))
t3


## Concatenating values using unite

t1

t4<-unite(t1,"Overall",cases,population,sep="/")
View(t4)




## Separating values using separate

t5<-separate(t4,Overall, into = c("Cases","Population"))
View(t5)

t6<-separate (t4,Overall, into = c("Cases","Population"),
              sep="/")
t6


# Dplyr

glimpse(messy)
str(messy)

# select for selection of variables

t1

select(t1,Country,cases)
select(t1,starts_with("p"))

# special functions
# starts_with
# ends_with
# contains
# matches

# rename - rename columns of dataframe - returns all variables

rename(t1, Location=Country)


# slice subset of rows by index

slice(t1,1:3)
slice(mtcars,1:3)

# get me rows 1 to 5 and 10 to 15 from mt cars

# Filter datasets for only relevant observations

filter(t1,Country=="Australia")
filter(t1, cases>300)


# Group by function allows for grouping of

group_by(t1,Country)


# summarize - allows to perform summary statistics on the dataset

summarize(t1,Case.Mean=mean(cases))



# arrange - order the rows of the data frame

arrange(t1,year)
arrange(t1,population)
arrange(t1,year,desc(cases))


## mutate - create new columns 

mutate(t1,avg_cases=cases/365)

## putting it together (Chaining)

t1 %>% 
  group_by(Country) %>% 
  summarize(Case.Mean=mean(cases))




t1 %>% 
  group_by(Country) %>% 
  summarize(Pop.Max=max(population))

t1 %>% 
  group_by(year) %>% 
  summarize(Pop.Max=max(population)) 





## Data Visualization


plot(cars$speed)

plot(cars$speed, cars$dist)
?plot
plot(cars$dist,type = "b") # Line graph

plot(cars$dist,cars$speed,xlab="dist",ylab="speed",main="Graph",col="Blue")



# Histogram

hist(cars$dist,col="green")



hist(cars$dist,xlab="Distance",ylab="Freq",main="Graph", col="red")


## Box plot

boxplot(iris$Sepal.Length, col = "blue") # generates boxplot






## GGPlot
library(ggplot2)


ggplot(mtcars,aes(x=cyl,y=mpg))+geom_point()


ggplot(mtcars,aes(x=factor(cyl),y=mpg))+geom_point(col="steelblue")


ggplot(mtcars, aes(x = wt, y = mpg, col = disp)) +  geom_point()


ggplot(mtcars, aes(x = wt, y = mpg,size = 4)) +  geom_point()


ggplot(mtcars, aes(x = wt, y = mpg, size = disp)) +  geom_point()

ggplot(mtcars, aes(x = wt, y = mpg, shape = factor(cyl))) +  geom_point()
ggplot(mtcars, aes(x = wt, y = mpg)) +  geom_point(shape = 1)
ggplot(mtcars, aes(x = wt, y = mpg, label = cyl)) +  geom_text()

ggplot(mtcars, aes(x = factor(cyl), fill = factor(am)))+geom_bar()

# Using Iris dataset
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=Species))+geom_point(alpha=0.5)


ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=Species))+geom_point()+geom_smooth()


ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=Species))+geom_point()+geom_smooth(se=F,method = "lm")


ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=Species))+geom_point()+
  labs(title="Scatter Plot")+labs(x="Length of Sepal",y="Width of Sepal")


ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=Species))+geom_point()+theme_bw()

ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=Species))+geom_point()+facet_grid(.~Species)




iris.tidy<-iris[c(5,(1:4))]
str(iris.tidy)

library(tidyr)

iris.tidy<-gather(iris.tidy,'part','value',-Species)
iris.tidy<-separate(iris.tidy,part,into=c('Part','Measure'),sep='\\.')


ggplot(iris.tidy, aes(x = Species, y = value, col = Part)) +
  geom_jitter() +   facet_grid(. ~ Measure)




install.packages("rattle")
library(rattle)
rattle()


