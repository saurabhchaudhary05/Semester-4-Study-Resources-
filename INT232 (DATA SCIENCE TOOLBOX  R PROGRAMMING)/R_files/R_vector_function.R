# R vector function
#rep()  : vector repetition in n number of times
rep(c(2,3,4),time=4)

rep(c(1,4,8),each=2)

rep(c(0,8),times=c(3,4)) #first value rep=3 and second value=4

rep(1:4,length.out=8)

rep(1:4,length.out=9)



#sequence function.....seq()
#   seq(from=3.5, to  =1.5,by=-.5)
seq(3.5,1.5,by=-0.5)

seq(-2.7,1.5,length.out=8)

seq(-2.5,1.5,lenght.out=10)


# any() and all() function

x<-1:10
x
any(x>5) #koi bhi ek value satisfy ho jaye
any(x>11)
any(x<3)
any(x<0)

all(x>5)  #sbhi cnondition satisfy honi chhiye
all(x<0)
all(x<15)
all(x>0)
