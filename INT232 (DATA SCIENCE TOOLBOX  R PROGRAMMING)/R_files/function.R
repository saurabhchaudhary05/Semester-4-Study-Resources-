# a function is a set of statements organized together to performs a specific tasks.
# R has a large number of in-built functions and the user can create their own functions
# in R , a function is an object so the R interpreter is able to pass control
# to the function ,along with arguments that may be necessary for the function 
# to accomplish the actions.




# an R function is created by using the keyword function.

# syntax
function_name<-function(arg_1,arg_2,arg_3){
  Function body
}

# R has many in-built functions which can be directly called in the program
#without defining them first,we can also crate  and use our own functions
# referred as user-defined functions

#in-built functions
# example1
print(seq(32,44))

print(mean(25:82))

print(sum(41:68))
#abs(variable)
#sqrt(variable)
#ceil(variable)
#floor(variable)
#trunc(variable)  it returns the truncate value of given variable
#round(variable,digits=n)
#sin(x)
#cos(x)
#tan(x)
#logbase(variable)
#variable) it is natural logarithms of base value
# user-defined functions
# function to print squares of numbers in seq
print(abs(-10))
print(sqrt(16))
print(ceiling(-10.1))
print(ceiling(11.1))
print(floor(11.1))
print(floor(-10.1))
print(trunc(10.1))
print(trunc(10.7))
print(trunc(-10.7))
print(round(3.25234,digit=3))
print(sin(45))
print(sin(3.14/2))
s1<-"Saurabh chaudahary"
print(toupper(s1))
substr(s1,3,5)
print(tolower(s1))




new_function1<-function(){
  for(i in 1:5){
    print(i^2)
  }
}
new_function1() 
# function-call


a<-function(){
  for(i in 1:5){
    print(i)
  }
}
a()


new_function2<-function(a){
  for(i in 1:a){
    b<-i^2
    print(b)
  }
}
new_function2(4)


new_function3<-function(a,b,c){
  result<-a*b+c
    print(result)
}
new_function3(4,5,6)
#call the function by names of tge arguments
new_function3(a=11,b=5,c=3)

a<-function(d,b,c){
  print(a*b*c)
}
a(d=2,b=3,c=4)

#calling a function with default arguments
# create a function with arguments
new_function<-function(a=9,b=2){
  result<-a*b;
  print(result)
}
new_function()
new_function(5,8)


# return type functions

#fibonacci sequence
fun_name<-function(a,b){
  output_value<-a*b
  return(output_value)
}
print(fun_name(6,7))


func1<-function(n){
  if(n==0){
    return(NULL)
  }else if(n==1){
    return(0)
  }else if(n==2){
    return(1)
  }else{
    return(func1(n-1)+func1(n-2))
  }
}
func2<-function(i){
  #cat("fibonacci sequence"," ")
  for(j in 1:i){
    cat(func1(j)," ")
  }
  
}
func2(10)

