rm(list=ls()) # clean memory
library (datasets) # load package

data(iris) # import dataset
head (iris) # visualize 'head' dataset
summary(iris) #  object summary
str(iris) # examine the structure of the object
fix(iris) # spreadsheet
students<-read.table('https://www.dipintothereef.com/uploads/3/7/3/5/37359245/students.txt',header=T, sep="\t", dec='.') # read data set from url
str(students) 
head(students)
#student column and row
students$height
students[,1]
students[1,]

#subset

f=students$gender=="female"
females=students[f,]
females
rownames(females)<-c('Vanessa', 'Vicky', 'Michelle', 'Joyce', 'Victoria')
females 

k=iris$Species=="versicolor"
versicolors=iris[k,]
versicolors
Q=iris$Species=="setosa"
setosas=iris[Q,]
setosas
J=iris$Species=="virginica"
virginica=iris[J,]
virginica

#sample
?sample
sample(1:nrow(females), 3)
sf=sample(1:nrow(females), 3,replace=TRUE)
females[sf,]

# Sorting
ind1<-order (students$height) # create a vector with order
students [ind1,] # sorting data set with  with filter
# Recoding
colors<-ifelse(students$gender=='male', 'blue','red') 
colors
students$colors=ifelse(students$gender=='male', 'blue','red') 
students
students$gender=ifelse(students$gender=='male', 'green','yellow') 
students
tall=students$height>=160
tall
tallDF=students[tall,]
tallDF

#practice 2.2
iris$Species
?ifelse
colors<-ifelse(iris$Species=='setosa', 'purple',ifelse(iris$Species=='versicolor', 'blue','pink')) 
colors
iris$colors=colors
iris
width=order(iris$Sepal.Width,decreasing =T)
iris[width,]
ver=iris$Species=="versicolor"
Versicolor=iris[ver,]
Versicolor
head(Versicolor)
Versicolor$colors=NULL
