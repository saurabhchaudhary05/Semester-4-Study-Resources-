#converting_data_types


#all data types into numeric
num1<-as.numeric(26L)
num1
num2<-as.numeric(23+21i)
class(num2)
num2
num3<-as.numeric(TRUE)
class(num3)
num3
num4<-as.numeric("adds123") # alphabet aur numeric wala string ko numeric convert nhi kr sakte
num4
num6<-as.numeric('124') #numeric wali string ko numeric m convert kr sakte h
num6
class(num4)


#all data types into integer
#same as numeric

#all data types into complex
com<-as.complex(34.43)
com

com2<-as.complex(45L)
com2

com3<-as.complex(FALSE)
com3

com4<-as.complex("123ab") # alphabet aur numeric wala string ko complex m convert nhi kr sakte
com4

com5<-as.complex(1234)  #numeric wali string ko complex m convert kr sakte h
com5

com6<-as.complex("123")
com6

#all data types into logical
log1<-as.logical(0)
log1
log2<-as.logical(12L)

log2
log3<-as.logical(12+87i)
log3
log4<-as.logical(0.0)
log4

# string can't be convert into logical
log5<-as.logical("123")
log5
log6<-as.logical("123ad")
log6


#all data types into character

char1<-as.character(45.12)
char1
char2<-as.character(12)
char2
char3<-as.character(12+13i)
char3
char4<-as.character(TRUE)
char4

