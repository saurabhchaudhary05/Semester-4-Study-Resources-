#repeat loop
v<-c("hello","how","are","you")
x<-2
repeat{
  print(v)
  x<-x+1
  if(x>5){
    break
  }
}

v<-c(1,2,3)
a<-1
repeat{
  
  if(a>4){
    break
  }
  print(v)
  a=a+1
}