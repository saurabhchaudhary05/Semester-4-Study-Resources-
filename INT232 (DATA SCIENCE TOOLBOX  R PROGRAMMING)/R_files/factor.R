#Factors are a data type in R that is used to represent categorical data.
#In R, factors are used to work with categorical variables, variables that 
#have a fixed and known set of possible values. They are also useful when you
#want to display character vectors in a non-alphabetical order.

#Historically, factors were much easier to work with than characters.
#As a result, many of the functions in base R automatically convert characters
#. This means that factors often crop up in places where they’re not actually 
#helpful. Fortunately, you don’t need to worry about that in the tidyverse, and
#ns where factors are genuinely useful.\



# attribute of factor
#ordinal category-into an order
#nominal category-No order to category


# factor in R programming language are data structure
#that are implemented to categorize the data or
#represent categorical data and store it on multiple levels



# creating a vector
x<-c("female","male","male","female")
#converting the vector x into factor
gender<-factor(x)
gender
levels(gender)
# or
gender<-factor(c("MALE","FEMALE","MALE","FEMALE"))
gender   

# levels can also be predefined by the programmer.
gender<-factor(c("female","male","male","female"),levels=c("female","transgender","male"))
gender

blood<-factor(c("O","AB+","O","AB+"),levels=c("A","B","AB","AB+","O","O+"))
blood

name<-c("john","jane","smith","jia")
temperature<-c(98.1,98.6,101.4,97.2)
flu_status<-c(FALSE,FALSE,TRUE,FALSE)

#list: different datatypes
subject1<-list(fullnames=name,temperature=temperature,gender=gender,blood=blood)
subject1


data1<-data.frame(name,temperature,flu_status,gender,blood)
data1


data1$name
# all rows from first column
data1[,1]

data1[1,]

data1[c(1,3),c("temperature","gender")]

data1[-2,c(-1,-3,-5)]
data1[c(1,3),c(2,4)]

#modifying factors
status<-factor(c("single","married","single","single"))
status
status[1]<-"married"
status
status[2]<-"divorced"  # error invalid factor level
# length
length(status)
levels(status)

# add value out of predefined  levels,then find modify levels
levels(status)<-"transgender"  #error
levels(status)<-c(levels(status),"other")
levels(status)
status
status[3]<-"other"
status
class(status)
as.data.frame(status)
class(status)



dir<-c("north","west","east","south")
is.factor(dir)
factor(dir)

dir<-c("north","west","east","north")
is.factor(dir)
factor(dir)  #  values r unique

dir<-c("north","west","east","south")
is.factor(dir)
factor(dir)
factor(dir,levels=c("north","west","east","south"),labels=c("N","W","E","S"))

factor(dir,levels=c("north","west","east","south"),exclude="north")








# generating factor levels using gl function
#gl(n,k,labels)
# n. is a integer giving the number of levels 
# k. is a integer giving the numbers of replication
v1<-gl(4,4,labels=c("ram","mohan","sohan","saurabh"))
v1

v1<-gl(3,2,labels=c("ram","mohan","sohan"))
v1

# accessing components of factors
dir<-c("north","west","east","north")
data<-factor(dir)
data
data[4]
data[c(2,3)]
data[c(2,4)]
data[-1]


# modifying factors
data[2]<-"east"
data


# is.factor() ..vector is in form of factor or not 
# is.ordered()  ...if factor is in ordered manner or not
# as.factor()....used to convert vector into factor
# as.ordered()..used to ordered the unordered function

