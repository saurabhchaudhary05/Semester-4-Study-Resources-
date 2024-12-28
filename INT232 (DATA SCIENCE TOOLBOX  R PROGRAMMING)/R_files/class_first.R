print("hello")
'hello'
a<-5
a
b<-10
c<-a+b
c
mystring<-"hello, world!"
print(paste("sum is",(c)))
# paste()...paste0()...cat()
c<-9L
class(c)
typeof(c)
cat(a,b)
cat("sum is",(c))
a<-12
b<-10
cat(a,b)
paste(a,b)
paste0(a,b)
c<-'vikas'
d<-12
cat("name is",c)
cat(nameis,c)  # error aa jayegaa
paste('number is ',b)
paste0("number is",a)
a<-25L
b<-as.numeric(a)
b
typeof(b)
a<-complex(4+9i)
a
a<-as.integer(23+9i)
a
class(a)
a<-8
b<-4
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(b^a)
print(a%%b)
print(a%/%b)

# data structure in R vectors,matrix,arra,list,data frame.
#vectors are sequence of elements which share the same data types,
# vectors supports all data types
# elements of vectors are known as components
# length()-no of elements in a vector
# vectors are used to represent only one dimensional data.
# vectors can be implemented in two forms-atomic and list vector
# logical and...logical or(&& ||)checks the first element of vector ...other values 
# will be discarded
a<-c(2,3,4,12)
class(a)
print(a)
b<-c(5L,6L,7L,8L)
class(b)
print(b)
d<-c(2+3i,9+9i,7+1i,8+6i)
class(d)
print(d)
e<-c(FALSE,TRUE,FALSE,TRUE)
class(e)
print(e)
print(a>3)
print(a==4)
print(a<10)
print(b<6)
print(b==8)
print(d<4+7i)
length(a)
print(e==FALSE)

# three method to initialize vectors
# direct method......seq(initial limit,final limit)....range(initial limit:final limit)
h<-c(3:9)
h
h<-seq(31,9)
h
# range
h<-c(1:9)
h
# diff between digits
h<-seq(1,6,by=2) # for gap between numbers
h
g<-seq(45,6,by=-2)
g
g<-seq(3,18,length.out=4) # vectors are divided into 4 vectors
g
a<-seq(1,10,length.out=5)
a

# accessing elements
a<-c(8,7,0,5,7,8,2,3)
a[3]
a[6]
a[1:5]
a[:4] # error
a[3:8]
a[-2] # discarded only that value
a[1]
a[20:30]
a[1,3,6]
a[c(1,3,6)] # accessing more than one values from a vector 
a[1:4]
a[-2:4]
a[-2:0]
a[-5:0]
a[2:0]
#[-:-] [-:+] [+:+] [+:-]
# character vector
a<-rep(c(1,2,3),each=3)
a

# # array () function with 1 parameter
# data
# syntax array(data)
a<-c(5,10,15,20,25,30)
a
arr<-array(a)
class(arr)
arr


# multi-dimensional array
# array() function with 2 parameters
# data
# dimension-rows,cols,and dim
# syntax---array(data,dim=c(no_of_rows,no_of_col,no_of_arr))
x<-array(a,dim=c(2,3,1))
x
x<-array(a,dim=c(2,3,2))
x
v1<-c(1,2,3)
v2<-c(4,5,6,7,8,9)
v3<-array(c(v1,v2),dim=c(3,3,2))
v3
v4<-c(1,2,3)
v5<-c(4,5,6,7,8,9,10,11)
v6<-array(c(v4,v5),dim=c(3,3,2))
v6
