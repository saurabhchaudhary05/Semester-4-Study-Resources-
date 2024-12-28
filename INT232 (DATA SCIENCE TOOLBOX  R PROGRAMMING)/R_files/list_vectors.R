# list is a generic objct consisting of an ordered
# collection of objects . Lists are heterogenous data
# structures . these are also one-dimensional data structures.
# a list can be a list of vectors ,list of matrices,
# a list of characters and a list of functions and so on.
# atomic vector give answer in row form while list vector give ans in column form
# most efficient version of list vector=factor

# we cant perform arithmetic operations on list vector so we have to unlist the list vector

a<-list(12,"saurabh",TRUE,23L,45+9i)
a
a<-c(1,2,3,4)
b<-c("hello","hi")
c<-15L
d<-3+5i
e<-c(TRUE,FALSE)
e<-list(a,b,c,d,e)  # list creation
e
e[2]
e[[2]] 
# accessing 2nd sublist
e[[2]][2]   # accessing 2nd element of 2nd sublist

e[[2]][2]<-"LPU"
e[[2]]
e[[1]]<-NULL  #deleting 1st sublist , it will change the order of sublists


list1<-list("vikas","abc",c(1,2,3,4),TRUE,FALSE,10L,10.5)
list1
#Naming of list
# names() function is used
list2<-list(c("saurabh","vikas","pankaj"),c(10,9,9),list("cse","mba","ba"))
list2
names(list2)<-c("student","marks","courses")
list2

list2[["gender"]]<-c("F","F","F")
list2

#list2[[1]][1]<-NA
#list2
#accessing a list
list2[1]
list2[[2]][1]
list2[[1]][3]
list2[2]
list2[3]
list2[[4]]
list2[[3]][1]
list2["marks"]
list2["courses"]
list2[["gender"]]
list2$courses   # by using dollar sign


#convert list to vector/ or list()
list3<-list(5:10)
list3
class(list3)
list4<-list(14:19)
list4
v1<-unlist(list3)
class(v1)
typeof(v1)
v2<-unlist(list4)
class(v2)
typeof(v2)
class(v2)
typeof(v2)
res<-v1+v2
res

# merging the lists
mer<-list(list3,list4)
mer
list3+list4    #....we cant merge the lists like that
mer
# in atomic vector when we merge vectors then merged vectors are in row form
# in list when we merge lists then merged listt are in column form
# create a list contaning character ,integer, logical ,complex and numeirc
# name a  list
# add a new sub list
# access elements of list by indexing ,naming and dollar sign



