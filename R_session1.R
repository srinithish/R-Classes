# R programming language
---------------------------------------------
  
  
  
  # Simple calculations
  
  
  1+2

3*6

9/3

3^2

sum(3+5+6)
sum(3-4-5)
sum(3, 4, 5)
sum(1,2,3
)


(1+2+3)/2

sqrt(4)

log(4)

exp(4)

1:100

?log

    --------------------------------
  
# Creating objects

# Assignment operators

# <-

# =

# ->

a<-1+2

b<-3*6

c<-9/3

d<-3^2

e<-sum(3+5+6)

sum(1,2,3)->f

g<-(1+2+3)/2

h<-sqrt(4)

a<-b<-6
a
b

a=b=8
a
b

a=b<-9
a
b

a<-b=3
a
b










# Naming conventions

_acd<-3
.acd<-3
.acd
1.eds<-3
acd-asd<-3




# Preferred Naming conventions

# GOOD: avg.clicks 
# OK: avgClicks 
# BAD: avg_Clicks









# Assign the of Marks for one student for the 
# following subjects (Max marks= 25)
# Subject: math,sci,eng,hist






math<- 20
sci<- 22
eng<-15
hist<-18








# Find the sum total of all marks for the student







tot<-math+sci+eng+hist
tot
tot<-sum(math,sci,eng,hist)
tot








# Data Types

# Numeric, Integer, Character, Logical, Complex, etc.






class(tot)


subj<-"Math"
class(subj)


logic<-FALSE
class(logic)


comp<-4+2i
class(comp)








## Data Objects





# Atomic Vector


a<-5


# c - combine, concatenate




a<-c(5,6,7)
a

names(a)
names(a)<-c("A","B","C")
a






# Create a vector of marks of test one for a student








mks1<-c(20,22,15,18)



subj<-c("math","sci","eng","hist")




names(mks1)<-subj


attributes(mks1)

mks1




# Create a vector of marks of test 2 for the
# same student


mks2<-c(20,22,15,18)
names(mks2)<-subj


mks1
mks2

tot<- mks1+mks2
tot





avg.tot<-tot/2

sum(tot)



#Subsetting a vector




tot
tot[1]
tot["eng"]





## Subset the total marks vector for only math 
# and eng



tot[c(1,3)]
tot[c("math","eng")]





## Subset the total marks vector for sci,eng and hist


tot[c(2:4)]
tot[-1]





## Comparison operators

## Subset the total marks for subjects where the 
# student has scored 40 and above marks



tot
tot>=40


high.mks<-tot>=40

tot[tot>=40]


tot[high.mks==F]





## Matices

m<-matrix(1:9,nrow=3)
m


m2<-matrix(1:9,nrow=3,byrow = T)
m2


## Assigning row and column names to a matrix

rownames(m)<-c("A","B","C")
m
colnames(m)<-c("X","Y","Z")
m


## rbind and cbind functions

tot.m<-rbind(mks1,mks2)
tot.m

tot.m2<-cbind(mks1,mks2)
tot.m2

class(tot.m)

## Row and Column sums function

rowSums(tot.m)
colSums(tot.m)


## Add and name the row sums and column sums 
# to the tot.m matrix

tot.m3<-cbind(tot.m,rowSums(tot.m))
tot.m3

tot.m3<-rbind(tot.m3,colSums(tot.m3))
tot.m3




colnames(tot.m3)<-c(subj,"Colsum")
rownames(tot.m3)<-c("mks1","mks2","Rowsum")
tot.m3



## Subset the matrix for only math marks for 
# both test

tot.m3[,1]
tot.m3[,"math"]








## Subset the matrix for only math and eng marks
# for 
# both tests

tot.m3[,c(1,3)]









## Subset the matrix for only math and eng marks
# for test 2


tot.m3[2,c(1,3)]






# Create a matrix for marks out of 100

tot.m4<-tot.m3*4
tot.m4


# Create 2 matrices 2x2


m1<-matrix(1:4,nrow=2)
m2<-matrix(1:4,nrow=2,byrow = T)


# Element wise Multiplication

m1*m2

# Mathematical Matrix Multiplication
m1 %*% m2





# Factors




a<-c("Female","Male","Male","Male","Female","Male","Female","Female")
class(a)






b<-factor(a,levels=c("Female","Male"))
b
class(b)
table(b)





sizes<-c("Large","Med","Med","Small","Large","Small","Med","Small")
sizes.factor<-factor(sizes,levels=c("Small","Med","Large")
                     ,ordered=T)
sizes.factor

class(sizes.factor)
table(sizes.factor)








## Data frames


df<-data.frame(Subj=c("math","sci","eng","hist"),
               mks1=c(20,22,15,18),mks2=c(20,22,15,18))
df

mtcars
data()

class(mtcars)


data()


## Useful functions when working with dataframes

head(mtcars)

tail(mtcars)



head(mtcars,n=10)
tail(mtcars,15)





str(mtcars)
summary(mtcars)





## Calling columns in a dataframe using $

mtcars$hp
mtcars[4]
mtcars[,4]
mtcars$gear






## Subset the mtcars dataset for only mpg,cyl and hp





mtcars[,c("mpg","cyl","hp")]





## Subset the mtcars dataset for only cars having 
# more than 6 cylinders




mtcars[mtcars$cyl>6,]




## Subset function

subset(mtcars,cyl>6)


## Order function

a <- c(100, 10, 1000)
order(a)
sort(a)




## Sort the mtcars dataset in descending order of hp



mt<-mtcars



mt[order(mtcars$hp,decreasing = T),]


# Sort the mtcars dataset in ascending order of
# column names



mt[,sort(names(mt))]




## Lists

l1<-list(mks1,mks2)
l1




names(l1)<-c("Marks1","Marks2")
l1






## Subsetting in lists

l1[[1]]
l1$Marks1









l1[[1]][3]
l1$Marks1[3]
l1$Marks1["eng"]














# Coercion


new<-c(1,"new",TRUE)

class(new)
as.numeric(new)

a<-c(1,2,3)
is.numeric(new)
is.character(new)
is.integer(a)

new2<-as.numeric(new)
new2


as.numeric
as.character
as.factor













# Recycling

r<-c(2,4,5)
s<-c(1,2,3,4)
r+s
