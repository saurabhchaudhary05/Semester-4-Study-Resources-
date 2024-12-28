#switch case 
#method-1 Based on Index
x<-switch(2,"Ram","shyam","mohan","sumit")
print(x)

x<-switch(4,"Ram","shyam","mohan","sumit")
print(x)

x<-switch(7,"Ram","shyam","mohan","sumit")
print(x)

ax= 1  
bx = 2  
y = switch(  
  ax+bx,  
  "Hello, Shubham",  
  "Hello Arpita",  
  "Hello Vaishali",  
  "Hello Nishka"  
)  
print (y) 



#method-2 Based on matching value
y<-20
z<-switch(y,"4"="Ram","14"="mohan","20"="shyam","80"="sumit")
print(z)

y<-"20"
z<-switch(y,"4"="Ram","14"="mohan","20"="shyam","80"="sumit")
print(z)

y<-"20"
z<-switch(y,"1"="ram","20"="shyam")
print(z)

# Following is val1 simple R program 
# to demonstrate syntax of switch. 

# Mathematical calculation 

val1 = 6
val2 = 7
val3 = "s"
result = switch( 
  val3, 
  "a"= cat("Addition =", val1 + val2), 
  "d"= cat("Subtraction =", val1 - val2), 
  "r"= cat("Division = ", val1 / val2), 
  "s"= cat("Multiplication =", val1 * val2), 
  "m"= cat("Modulus =", val1 %% val2), 
  "p"= cat("Power =", val1 ^ val2) 
) 
print(result) 


x= "2"  
y="1"  
a = switch(  
  paste(x,y,sep=""),  
  "9"="Hello Arpita",  
  "12"="Hello Vaishali",  
  "18"="Hello Nishka",  
  "21"="Hello Shubham"  
)  
print (a)


x= "2"  
y="1"  
a = switch(  
  paste(x,y,sep=""),  
  "9"="Hello Arpita",  
  "12"="Hello Vaishali",  
  "18"="Hello Nishka",  
  "Hello Shubam"="21"  
)  
print (a)

y = "18"  
x = switch(  
  y,  
  "9"="Hello Arpita",  
  "12"="Hello Vaishali",  
  "18"="Hello Nishka",  
  "21"="Hello Shubham"  
)  
print (x)

