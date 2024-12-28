#sbse pehle getwd() function likho  phir iss R ki directory aa jayegi console m
# phir uss directory m jake jis csv file ko read krna usko uss directory m jake 
#paste kr dena phir neeche wala statement likh dena


#read.csv(file.choose())
#read.csv("name")
# read.csv(path)


#[ reached 'max' / getOption("max.print") -- omitted 240 rows ] in R studio
# above error aa jati h jab large data print krana chahte h to neeche wali line
# execute krdo error nhi aayegi
getwd()
options(max.print=999999)
x<-read.csv("diabetes.csv",TRUE,",")
class(x)
head(x,n=10)
class(x)
dim(x)
str(x)
View(x)
head(x)   #display 1st 6 elements
tail(x)    #last 6 elements

head(x,n=15)   # first 15 elements
tail(x,n=8)    # last 8 elements
mean(x$Glucose)     
median(x$Glucose)
sd(x$Glucose)
max(x$Glucose)
min(x$Glucose)
summary(x)
subset(x,Age>30)
subset(x,BloodPressure>60,select=-BMI)
x[3,]
x[,1]
x[c(1:5),]
x[,c(3,4)]
x[289,3]

