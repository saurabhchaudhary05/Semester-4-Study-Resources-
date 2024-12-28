# r functon >>>>>>user defined function >>>>>>>pre-defined function

# fun_name<-function(parameter1,parmater2,.......){ }

new.function<-function(){
  for(i in 1:5){
    print(i^2)
  }
}
new.function() # function call



new.function2<-function(x,y,z){
  res<-(x+y+z)
  print(res)
}
new.function2(3,5,6.2) #function call



new.function2<-function(x,y,z){
  res<-(x+y+z)
  print(res)
}
new.function2(x=3,y=5,z=6.2) 



#default argument
new.function3<-function(x=10,y=20){
  res<-(x*y)
  print(res)
}
new.function3()



#default argument
new.function3<-function(x=10,y=20){
  res<-(x*y)
  print(res)
}
new.function3(5,6)