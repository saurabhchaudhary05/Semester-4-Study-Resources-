employee.data<-data.frame(employee_id=c(1,2,3,4,5),employee_name=c("VARUN","sameer","RAMAN","sazy","PRICE"),
sal=c(523.3,913.2,641.0,529.00,453.25),
starting_date=as.Date(c("2012-01-01","2013-09-23","2014-11-15",
"2011-05-11","2015-03-27")),
                     stringAsFactors=FALSE
)
print(employee.data)

g1<-data.frame(employee.data$employee_name,emp.data$sal)
g1

g1<-employee.data[c(2,3),c(1,4)]
g1



c1<-c(3,4,5,6,7,8,9,10)
c2<-c(11,12,13,14)
col_name=c("col1","col2","col3")
row_name=c("r1","r2","r3","r4")
v1<-matrix(c(c1,c2),nrow=4,ncol=3,byrow=TRUE,dimnames=list(row_name,col_name))
v1


c1<-c(9,6,4)
c2<-c(4,3,1)
c3<-c1%/%c2
c3


#summary functiion()
#A user gets a summary in R programming by using the summary function with a 
#numerical vector (or a group of numerical vectors such as columns in a data
#frame). The summary function returns the minimum, maximum, mean, 
#median, and 1st and 3rd  quartiles for a numerical vector.
summary(c3)













y<-c("hardwork","is","the","key","of","success")
y
fun_name<-function(a){
  for(i in y){
    if(a==i){
    print("element present in vector")
      
    }
  }
  
}
fun_name("key")
