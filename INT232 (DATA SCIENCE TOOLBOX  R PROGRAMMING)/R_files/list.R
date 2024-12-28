#list:different data type can be possible

vec<-c(8,9,4,7,6)
char_vec<-c("ram","sohan","mohan","shyam","rohan")
logic_vec<-c(TRUE,FALSE,FALSE,TRUE,FALSE)

#method-1
list1<-list(vec,char_vec,logic_vec)
list1

#method-2
list2<-list("ram","sohan",c(1,2,3,4,5),TRUE,FALSE,52L,56,85)
list2

#naming of list
list3<-list(c("ram","mohan","sohan"),c(56,89,78),list("btech","bsc","BA"))
list3
names(list3)<-c("students","marks","courses")
list3


#Accessing the list
# 1) by using indexing
print(list3[1])
list3[2]
list3[3]

# 2) by using name
list3["marks"]
list3["courses"]

# 3) by using dollar
print(list3$students)


#converting list into vector
# we can't perfrom some of operations in list so we convert list to vector
#unlist() converts list into vector

list3<-list(5:9)
list3
list4<-list(14:18)
list4

v1<-unlist(list3)
class(v1)
typeof(v1)

v2<-unlist(list4)
class(v2)

res<-v1+v2
res
v1-v2
v1*v2


#merging the list
list3<-list(5:9)
list3
list4<-list(14:18)
list4

mer<-list(list3,list4)
mer
