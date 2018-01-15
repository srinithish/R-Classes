#ATI lessons on R 
1+2
3*6
9/3
3^2
sum(3+5+6)
sum(3-4-5)
sum(3,4,5)
sum(1,2,3)
vectr  = c(3,4,5)
class(vectr)
1:100
exp(4)
?log
vectr=1:100
class(vectr)
a=b=8
a=b<-9
a<-b=3
math = 22
sci = 21
eng = 20
hist = 21
total = sum(math,sci,eng,hist)
total
class(total)= "integer"
class(total)
comp = 4+2i
class(comp)
a = c(5,6,7)
sum(a)
a = c(5,6,'cat')
class(a)
class(a)= 'integer'
names(a)
names(a) = c("A","B","C")
a
vect = c(22,21,20,21)
namrVect = c("math","sci","eng","hist") 
names(vect) = namrVect
attributes(vect)
mks1 = vect
vect$math
vect["math"]
mks2 = c(19,23,21,18)
names(mks2) = namrVect
sum.mks1 = sum(mks1)
sum.mks2 = sum(mks2)
sum.mks1
sum.mks2
mks1+mks2
class(sum(mks1,mks2)
)
class(sum(mks1,mks2))
avgTot = (mks1+mks2) / 2
avgTot
vect[vect>20]
total = mks1 + mks2
total [c("math","eng")]
total[-1:-3]
total > 40
total[!total>40]
m = matrix(1:9,nrow = 3,byrow=TRUE)
rownames(m)
rownames(m)= c('a','b','c')
colnames(m) = c("x","y","z")
m
m[,"x"]
m1 = rbind(mks1,mks2)
m2 = cbind(mks1,mks2)
m1
m2
colnames(m2)=c('1','2')
m2
tyoeof(m2)
typeof(m2)
class(m2)
class(rowSums(m2))
class(colSums(m2))
mks1= c (10,11,12,13)
mks2 = mks1
m = rbind(mks1,mks2)
m
colnames(m)=namrVect
m
m = rbind(m,colSums(m))
rownames(m)[3]='totals'
m
m = cbind(m,rowSums(m))
m
colnames(m)=c(namrVect,"totals")
m
m['mks2',c("math","eng")]
m*2
m1 = matrix(1:4,nrow = 2,byrow=TRUE)
m1
m2 = matrix(1:4,nrow = 2)
m2
m1*m2 #matrix muliplication
m1 %*% m2
m1[,1]*m2
#m1 % m2
a= c("Female","Male","Male","Male","Female")
class(a)
typeof(a)
b=as.factor(a)
class(b)
b = factor(a,levels = c('Male',"Female",'not'))
bb
b
sizes = c("large","med","med","small")
sizes.factor = factor(sizes,levels = c("small","med","large"),ordered = T)
sizes
sizes.factor
df = data.frame(Subj = c("math",'sci','eng','hist'), mks1 =c(20,22,15,18),mks2 = c(20,22,15,18)) 
mtcars  
data()
summary(mtcars)
head(mtcars)
tail(mtcars)
str(mtcars)
a= head(mtcars)
typeof(a)
colnames(mtcars)
class(mtcars["mpg"])
class(mtcars$mpg) = "data.frame"
mtcars["Mazda RX4",c("mpg","cyl")]
str(mtcars)
mtcars[mtcars["cyl"]>6,c("cyl","hp")]
a = c(100,10,1000)

#sorting and ordering 
#note that order function gives the positios of the data accordint to the rank
#say lowest value is at posiotin 6, then the first digit in the vector returend by the order
#function would be 6 and then say 4 ehich says the second least value is at posn 4


order(a)
sort(a)
sort(mtcars)
order(mtcars$hp)
sort(mtcars$hp)
mtcars[order(mtcars$hp),]
mt = mtcars
mt[,order(colnames(mt))]
l1 = list(mks1,mks2)
l1
names(l1) = c("marks1","marks2")
l1$marks1
class(l1$marks1)
class(l1[[1]])
m
l2= list(m,mks1)
l2[[1]][2,3]
#xlsx , readxl,tidy
