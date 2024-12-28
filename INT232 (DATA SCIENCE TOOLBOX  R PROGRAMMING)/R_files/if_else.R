# is.numeric(x)
# is.integer()
#


#if-else 
x<-25L
if(is.integer(x))
{
  print("x is integer")
}else
{
  print("x is not integer")
}

y<-c("hardwork","is","the","key","of","success")
y
if("key"%in%y){
  print("key is found in our vector")
}else{
  print("key not found in vector")
}



y<-c(3L,4L,7L,8L,20L,7L,80L)
x<-8L
if(x%in%y){
  print("element found")
}else{
  print("not found")
}


# %in% ..this function will not work in list vector
a<-c(1,2,3,4)
b<-c("hello","hi")
c<-c(15L,12L,14L)
x<-list(a,b,c)
z<-2
if(2%in%x){
  print("element found")
}else{
  print("element not found")
}


# so first we have to convert list to vector by unlist function then we will 
# apply %in%
a<-c(1,2,3,4)
b<-c("hello","hi")
c<-c(15L,12L,14L)
x<-list(a,b,c)
y<-unlist(x)
class(y)
if(2%in%y){
  print("element found")
}else{
  print("element not found")
}




a <- 'A'
# checking if-else if ladder 
if(a %in% c('a','D')){ 
  print("Block if") 
}else if(a %in% c('A','D')) 
{ 
  print("Block else-if") 
}else
{ 
  print("Block else") 
} 



if(2 %in% c(3,4)){
  print("1")
}else if(2 %in% c(2,5)){
  print("2")
}else{
  print("3")
}


x<-c("what","is","truth")
if("Truth"%in%x){
  print("truth found")
} else if("tRuth"%in%x){
  print("truth is found2")
} else{
    print("truth found3 ")
}




# creating values
var1 <- 6
var2 <- 5
var3 <- -4

# checking if-else if ladder
if(var1 > 10 || var2 < 5){
  print("condition1")
}else{
  if(var1 <4 ){
    print("condition2")
  }else{
    if(var2>10){
      print("condition3")
    }
    else{
      print("condition4")
    }
  }
}







#if-else.if
marks<-75
if(marks<=75){
  print("first division")
}else if(marks<65){
  print("second division")
}else{
  print("fail")
}




marks<-75
if(marks>75){
  print("first class")
}else if(marks>65){
  print("second class")
}else if(marks>45){
  print("third class")
}else{
  print("fail")
}



a<-c(1,2,3,4)
b<-c(5L,6L,7L,8L)
c<-c(TRUE,FALSE,TRUE,TRUE)
d<-list(a,b,c)
d
if((d[[2]][2])%in%b){
  print("hello")
  print(d[[2]])
  print(d[2])
}else{
  print("invalid index")
}


a<-c(1,2,3,4)
b<-c("hello","hi")
c<-c(15L,12L,14L)
x<-list(a,b,c)
#y<-unlist(x)
#class(y)
if(is.numeric(x[[2]][2])){
  print("yes it is numeric")
}else{
  print("No it is not numeric")
}