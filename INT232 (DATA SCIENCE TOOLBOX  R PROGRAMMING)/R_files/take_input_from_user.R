#take input from user
name<-readline(prompt="enter ur name: ")
name

age<-readline(prompt="enter ur age: ")
age

school<-readline()
school

print(paste("my name is ",name,"and my age is ",age," and school name is ",school))

paste("hello","233","ram",sep="")
paste("hello","233","ram",sep=" ")
paste("hello","233","ram")

paste0("hello","233","ram")


x<-as.integer(readline())
if(x>0){
  if(x%%2==0){
    print("x is even and positive")
  }else{
    print("x is odd and positive")
  }
}else{
  if(x%%2==0){
    print("x is even and negative")
  }else{
    print("x is negative and odd")
  }
}


vect<-c(2,3,10,15,23,14,17,20)
ifelse(vect%%2==0,"even","odd")
summary(vect)
