#next and break
# next is used to skip the any remaining statement in the loop and continue 
x<-1:20
for(val in x){
  if(val==5){
    next
  }
  print(val)
}


#break
x<-1:10
for(val in x){
  if(val==5){
    break
  }
  print(val)
}

i<-0
while(i<=10){
  print(i)
  i=i+1
}


a<-1
repeat{
  print("hello")
  if(a>5){
    break
  }
  a<-a+1
}