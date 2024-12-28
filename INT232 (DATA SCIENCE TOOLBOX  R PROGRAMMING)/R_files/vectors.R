#data structures in R
#vectors
#matrix
#array
#list
#data frames

#vectors=it is basic data structures ....
        #it is sequence of elements which share same data type
#A vector is substantially a list of variables,
#elements of vectors are known as components
        #length()=no of elements in vector
#types of vector
    #atomic vector:same data type
    #list: different data type

# most efficient version of atomic vector is matrix


#atomic vector
     #how to create a vector

a<-c(1,2,3,5)
a

b<-c(-3:5)  #range from one element from another element
b

sq<-seq(1,5)
sq

sq1<-seq(1,5,by=.5) #separate the spaces by .5 
sq1

s<-seq(1,5,by=2)
s
sq2<-seq(1,4,length.out=5) #divide the range in five elements
sq2

#numeric vector
numv<-c(12.3,52.6,23,45,89.145)
numv
class(numv)

#integer vector
intv<-c(5,6,1,8,9,7)
intv
class(intv)

intv<-as.integer(intv)
class(intv)
intv

intc<-c(4L,6L,8L)
class(intc)

#character vector
charv<-c(1,2,3)
class(charv)

charv<-as.character(charv)
class(charv)

charvv<-c("ram","mohan","shyam","sohan")
class(charvv)


#logical vector
log1<-c(TRUE,FALSE)
log1
class(log1)


#accessing element of vector
# 1) by indexing.....in r programming index starts from 1


sq<-seq(1,3)
sq
sq[2]
sq[3]
sq[4]
sq[6]


char_vec<-c("ram"=12,"shyam"=32,"mohan"=31)
char_vec
char_vec["shyam"]
char_vec[32] #we can't access by the value ...we can access by key


a1<-c(1,2,3,4,5,6,7)
#only true values will be returned
a1[c(TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE)]


#vector operation
a1<-c(1,2,3,4,5,6,7)
a2<-c("ram","shyam","mohan","sohan")

a3<-c(a1,a2)  #combine both vector
a3

a4<-c(5,6,7,8,1,2,4)
a1+a4
a1-a4
a1*a4
a1/a4


a2<-c("ram","shyam","mohan","sohan")
a2[3]
a2[7]
a2[-2] #agr negative m likhte h to uss value ko remove krke sbhi value aayegi
a2[-5]
a2[2:4]
a2[2,3] #error will be there
a2[c(2,3)]  # if we want access more than one value then we have to 
# write vector like this
a2[c(2,3,2)]



#naming of vector
z<-c("ram","mohan","sohan")
z
names(z)=c("y1","y2","y3")
z
z["y1"]
z["y3"]


a<-c(1,2,3)
names(a)<-c("a1","a2","a3")
a
a[1]
a["a1"]

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
length(a)
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
a<-seq(1,100,length.out=5)
a
a<-c(1:100,by=5)
a
a<-c(1:100,length.out=5)
a
# accessing elements
a<-c(8,7,0,5,7,8,2,3)
a[3]
a[6]
a[1:5]
a[1:4] # error
a[3:8]
a[-2] # discarded only that value
a[1]
a[20:30]
a[1,3,6] #error
a[c(1,3,6)] # accessing more than one values from a vector 
a[1:4]
a[-2:4] #error.. only 0 we can use with negative range
a[-2:0]
a[-1:0]
a[-3:0]
a[-5:0]
a[-8:0]
a[2:0]
a[1:0]
a[4:2]
a[2:0]
a[-2:-3]
a[-1:-4]
a[0:4]
a[-2:4]


#[-:-] [-:+] [+:+] [+:-]
# character vector
char_vec<-c("ram"=12,"shyam"=32,"mohan"=22)
char_vec
char_vec[32]  # error
char_vec["shyam"]

sub_name<-c("john","jane","smith","lia")
sub_name
sub_name[c(2,3)]  # range including both
sub_name[c(2:4)]
sub_name[c(-2,-4)]

temp<-c(98.1,98.6,101.4,97.2)
flu_status<-c(FALSE,FALSE,TRUE,FALSE)

#all values in vector
sub_name
temp
flu_status

temp<-c(98.1,98.6,101.4,97.2)
temp[c(TRUE,FALSE,TRUE,TRUE)]
temp[c(0,0,1)]  # first value will printed twice
temp[c(0,1,2,3)]  # fisrt second third value printed once
temp[c(0,0,2,2)]  # second value will printed twice


# the logical and numeric values are converted to characters.
# the non-character values are coerced to character type if one of the
# value is character 
s<-c("apple","red",5,TRUE)
print(s)
class(s)


# sorting  numbers
v<-c(3,8,4,5,0,30)
a<-sort(v)
a
a<-sort(v,decreasing=TRUE)
a
v<-c(3,2,6,5,7,8,0)
sort(v,decreasing=TRUE)


# sorting character vectors
v<-c("Red","Blue","yellow","voilet","apple")
a<-sort(v)
a
a<-sort(v,decreasing=TRUE)
a

v<-c(3,8,4,5,0,30)
length(v)


#repeat vectors
a<-rep(c(1,2,3),each=3)
a

a<-rep(c(1,2,3),time=3)
a
a<-rep(c(1,2,3),times=c(5,2,1))
a
a<-rep(c(1,2,3),times=c(5,2,0))
a
b<-rep(c(1,2,3),each=3)
b
b<-rep(c(1,2,3),times=c(3,2,1))
b
b<-rep(c(1,2,3),time=2)
b
# any......all
a<-1:10
a
any(a)
all(a)
any(a>6)
any(a>11)
all(a<5)
all(a<11)
all(a<10)

.a<-12
.a
ls()  #give all hidden values
ls(all.names=TRUE)
