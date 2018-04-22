#data structure

#Vectors--
v1=c(1,2,3,4)
class(v1)
?class()
v2= c('A','B','C','D')
class(v2)
v3= c(TRUE,FALSE,T,F)
class(v3)
v2[3]
v3[4]
v4= c(1,2,3,'A')
v5= c(T,2,F,'A')
class(v5)
class(v4)
v6= c('A','2','B')
class(v6)
set.seed(100)
v7 = rnorm(100, mean = 60, sd=15)
v7
mean(v7)
sd(v7)
?rnorm()
?hist()
hist(v7)
hist(v7,breaks = 15,col = 1:10 )
hist(v7,freq = F, col = 'yellow',main = 'Pune Uni',sub='MBA',xlab = 'Marks',ylab = 'density of counts')
lines(density(v7), col ='red',lty=4,lwd=4)
#title(main = 'PUMBA',sub = 'Finance')



#Matrix----
length(100:123)
m1=matrix(100:123)
(m1 =matrix(100:123,ncol = 6,byrow = T))
(m2=matrix(c(100:123),ncol = 4,byrow = T))
m2[1, ]
m2[ ,2]
m2[, c(1,4)]
m2[c(2,6),c(1,4)]
m2[2:6,1:4]
colSums(m2)
rowSums(m2)
rowMeans(m2)
?matrix()


#ARRAY-------------
length(100:123)
4*3*2
(a1 = array(100:123 ,dim = c(4,3,2,1)))
(loc = paste('loc', 1:4,sep = '-'))
(product = paste('p', 1:3,sep = '@'))
(coy = paste('coy', 1:2,sep = '%'))
dimnames(a1) = list(loc, product, coy)
a1
apply(a1,1,sum)
apply(a1,2,sum)
apply(a1,3,sum)
apply(a1,c(1,2),sum)
apply(a1,c(2,3),sum)
sum(a1)






#Data Frame------
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'),size = 30, replace=T, prob=c(.7,.3)))
(marks= floor(runif(30,50,100)))
df1= data.frame(rollno,sname,gender,marks)
head(df1)
head(df1,n=3)
head(df1,3)
tail(df1)
str(df1)
class(df1)
summary(df1)
df1
df1$gender
df1$marks
df1[,c(2,4)]
df1[1:10,]
df1[marks > 50, ]
df1[marks > 50 & gender=='F', ]
df1[marks > 50 & gender=='F', c(1,2) ]
df1[marks > 50 | gender=='F', ]
names(df1)  # names of the column
dim(df1)    #dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)
df2 = (aggregate(marks ~ gender, data=df1, FUN=max))
pie(x=df2$marks)
barplot(df2$marks, col = 1:2)
library(dplyr)
(grades = sample(c('A','B','C','D'), size = 30, replace=T,prob =(c(.3,.2,.4,.1)) ))
table(grades)
class(grades)
gradesF = factor(grades)
grades
gradesF
gradesF1 = factor(grades, ordered = T)
gradesF1
gradesF2 = factor(grades, ordered = T, levels = c('D','C','B','A'))
gradesF2

library(gsheet)


df= read.csv('./Data/denco.csv')
df
summary(df)
str(df)
names(df)
aggregate(df$revenue,  by=list(df$region), mean)
