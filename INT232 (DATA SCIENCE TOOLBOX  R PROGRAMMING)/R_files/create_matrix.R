# R matrix
#matrix function used to create matrix
# syntax- matrix(data,nrow,ncolumn,byrow,dim_name)
#byrow - iski value boolean hoti h.........agr value true hogi to elements ka
# arrangement rowwise hoga agr false h to arrangement column wise hoga...
# waise iska by default value false hota h
# dim-name= row aur column ka naming k liye  iska use krte h

#A matrix is a two-dimensional array that has a size of m-by-n, 
#where m and n are nonnegative integers.

mat1<-matrix(c(2:13),nrow=4)
mat1

#bydefault byrow =True hoti h
#warning aa jayegi kyuki elements enough nhi h
mat2<-matrix(c(2:15),nrow=4,byrow=TRUE)
mat2


mat3<-matrix(c(2,5,6,8,7,4),nrow=2,ncol=3,byrow=TRUE)
mat3

mat4<-matrix(c(2,5,6,8,7,4),nrow=3,ncol=2,byrow=TRUE)
mat4

mat5<-matrix(c(2,5,6,8,7,4),nrow=2,ncol=3,byrow=FALSE)
mat5


#naming matrix
x<-matrix(c(5:16),nrow=4,byrow=TRUE)
y<-matrix(c(7:18),nrow=4,byrow=FALSE)
x
y


row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3")
z<-matrix(c(7:18),nrow=4,byrow=TRUE,dimnames=list(row_name,col_name))
z


#accessing elements of matrix
print(z[3,1])
print(z[4,3])
print(z[3,])
print(z[2,])
print(z[,2])


#modify elements of matrix
z
z[4,3]<-0  # 0 is assigned to 4th row ....3rd column 
print(z[4,3])
z

#with thehelp of relational operators we can also modify
#agr z m kisi ki value 11 h to uski value 0 krdo
z[z==11]<-0
z


#z m jiski value 15 se jyada h usko value 0 set krdo
z[z>15]<-0
z


# addition of rows and columns in exxist matrix
# cbind() and rbind() are used to add column and row respectively
z

#ye row aur column temporarily add honge..z ki real value pr koi effect nhi pdega 
rbind(z,c(2,3,4))
z

cbind(z,c(2,3,4,5))
z



#transpose of matrix
z
t(z)



# adding two matrix.....subtraction..division...multiply
a1<-matrix(c(5:16),nrow=4,ncol=3,byrow=TRUE)
a1
a2<-matrix(c(1:12),nrow=4,ncol=3,byrow=TRUE)
a2

sum<-a1+a2
sum

sub<-a1-a2
sub

mul<-a1*a2
mul

div<-a1/a2
div
