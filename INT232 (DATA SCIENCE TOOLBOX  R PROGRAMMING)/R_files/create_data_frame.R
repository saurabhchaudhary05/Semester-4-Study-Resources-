# data frame= it is like an array..unlike an array
# a data we store in the column of the data frame can be various types.
# a data frame is 2 dimensional array like structure or a table in which a 
# column contains value of one variable, and rows contains one set of values 
# from each column.
# a data frame is a special case of the list in which each component has equal 
# length

# creating data frame
#frame()
emp.data<-data.frame(employee_id=c(1:5),
                     employee_name=c("ram","mohan","sohan","rohan","hitesh"),
                     sal=c(523.3,913.2,641.0,529.0,453.25),
                     starting_date=as.Date(c("2012-01-01","2013-09-23","2014-01-17",
                                             "2011-08-13","2015-03-27")),
                     stringAsFactors=FALSE
)
print(emp.data)
# str used to know the structure of data frame
str(emp.data)


# access particular column
f1<-data.frame(emp.data$employee_name,emp.data$sal)
f1


# access particular row
f2<-emp.data[2,]
f2


f3<-emp.data[3:5,]
f3



# accessing specific row and column combination
f3<-emp.data[c(2,3),c(1,4)]
f3

f4<-emp.data[c(2,3),c(2,4)]
f4

f5<-emp.data[c(2,3),]
f5

f6<-emp.data[2,3]
f6


#modification
# to add row=rbind()....to add column=cbind()
emp.data1<-data.frame(employee_id=c(1:5),
                     employee_name=c("ram","mohan","sohan","rohan","hitesh"),
                     sal=c(523.3,913.2,641.0,529.0,453.25),
                     starting_date=as.Date(c("2012-01-01","2013-09-23","2014-01-17",
                                             "2011-08-13","2015-03-27"))
)
print(emp.data1)
x<-list(6,"manish",420.45,"2020-03-12")
x
print(emp.data1)
rbind(emp.data1,x)


y<-c("agra1","agra2","agra3","agra4","agra5")
cbind(emp.data1,Address=y)



# delete row and column
# delete 2nd row
emp.data1<-emp.data1[-2,]
print(emp.data1)


# delete column
emp.data1$starting_date<-NULL
print(emp.data1)
#or
#emp.data1<-emp.data1[,-4]

print(summary(emp.data1))











#frame() is used to create a data frame
emp.data<-data.frame(
employee_id=c(1:5),
employee_name=c("vikas","sammer","pankaj","sazy","prince"),
sal=c(523.3,913.2,641.0,529.0,453.25),
starting_date=as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
stringAsFactors = FALSE # used to convert string values as factor bcz
# learning algorithms not accept the string data
)
print(emp.data)

f1<-data.frame(emp.data$employee_name,emp.data$sal)
f1
fa<-emp.data[3,]
fa
f2<-emp.data[3:5]
f2
fb<-emp.data[3:5,]
fb
f3<-emp.data[c(2,3)]
f3
fc<-emp.data[c(2,3),]
fc
f6<-emp.data[c(2,3),c(1,4)]
f6
f7<-emp.data[2,3]
f7


# add new row and column
#rbind(name_of_dataframe,name_of_new_list)-->used to add new row 
# cbind()-->used to add column in dataframe

x<-list(6,"manish",420.45,"2013-09-23",FALSE)
rbind(emp.data,x)
emp.data
y<-c("jodhpur","jaipur","agra","ajmer","btp")
cbind(emp.data,Address=y)


# efficient version of data frame is factor

      