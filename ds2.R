rollno = 1:30
#(sname = c(paste('s', 1:30, sep='')))
(sname =paste0('student', 1:30,'-', 'xyz'))
(gender = sample(c('M','F'),size = 30, replace=T, prob=c(.5,.5)))
table(gender)
(age = floor(runif(30, 21, 50)))
(course = sample(c('BTech','MTech','Phd'), size = 30,replace = T, prob = c(.3, .4, .3)))
(marks= ceiling(runif(30,60,100)))
(married = sample(c('TRUE','FALSE'),size = 30, replace=T, prob=c(.6,.4)))


df = data.frame(rollno, sname, gender,age,course, marks, married)
pie(table(gender))
boxplot(marks)
hist(marks, freq = F, breaks = 10,col = 1:10)
lines(density(marks))




df
#str ,dim, class,summary
str(df)
#filter
df$rollno
df$sname
df$gender
df$marks
df$married

