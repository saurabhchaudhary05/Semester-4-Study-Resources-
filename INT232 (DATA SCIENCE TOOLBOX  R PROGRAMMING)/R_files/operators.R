#operators 
#arithmetic operators + - / * %% %/% ^ or **
a<-7.5
b<-8.5
print(a+b)
print(a*b)
print(a-b)
print(a/b)
c<-8
d<-4
print(c%%d) #reminder
print(c%/%d) #quotient
print(c^d)  #power


# vectors
c1<-c(8,9,6)
c2<-c(2,4,5)
print(c1+c2)
print(c1*c2)
print(c1-c2)
print(c1/c2)
print(c1%%c2) #reminder
print(c1%/%c2) #quotient
print(c1^c2)  #power

#Relational operators < > <= == >= !=
a<-7.5
b<-8.5
print(a<b)
print(a>b)
print(a<=b)
print(a>=b)
print(a==b) 
print(a!=b)

a<-c(8,9,6)
b<-c(2,4,5)
print(a<b)
print(a>b)
print(a<=b)
print(a>=b)
print(a==b) 
print(a!=b)


#logical operators & && | || !
# diff between & and &&
#& Operator in R
#The “&” operator is a logical operator used to evaluate logical expressions.
#&& Operator in R
#The “&&” operator is the “logical AND” operator. It is used to evaluate two logical expressions and return a single 
#logical value indicating whether both expressions are TRUE or not.

c1<-c(8,9,6)
c2<-c(2,4,5)
print(c1&c2)
print(c1|c2)
c1<-4
c2<-5
c1&&c2
print(c1||c2)
print(c1&&c2)

c1<-c(8,9,6)
c2<-c(2,4,5)
print(c1&c2)
print(c1&&c2)
print(c1||c2)

f<-8
g<-9
print(f&&g)
print(f&g)


#assignment operators = <- -> <<- ->>
k<-4
print(k)
l<<-8
print(l)


#The %*% operator performs matrix multiplication on two matrices.


