# install packages("readxl")
library("readxl")
library("sqldf")
#d1=read.csv(file.choose())
#d1=read.csv(file.choose())
d1=read.csv("diabetes.csv",TRUE,",")
class(d1)
View(d1)
View(sqldf("select * from d1 limit 10"))# display 10 rows
View(sqldf("select Glucose as G,Age as A from d1 limit 10"))

#filtering the data
sqldf("select Glucose,Age from d1 where BMI>25 limit 20")
View(sqldf("select * from d1 order by BMI desc limit 20"))
colnames(d1)[9]<-"state"
View(d1)
View(sqldf("select Glucose,BloodPressure,Insulin from d1 order by BMI,Insulin desc limit 10"))
#"select Glucose,BloodPressure,Insulin from d1 order by BMI,Insulin desc 
#limit 10": This is an SQL query enclosed within double quotes. 
#It selects the columns Glucose, BloodPressure, and Insulin from the data frame
#d1. It then orders the result by the BMI column first in ascending order, 
#and if there are ties in BMI, it orders by the Insulin column in descending 
#order (desc). Finally, it limits the output to the first 10 rows using the
#limit clause.


#like
sqldf("select Glucose,BloodPressure,Insulin,Age from d1 where Age like '5%'")
View(sqldf("select Glucose,BloodPressure,Insulin,Age from d1 where Age like '50%'"))


# aggregate function
sqldf("select sum(BMI) from d1")

# nested select
View(sqldf("select Age,glucose from d1 where Glucose==(select max(Glucose) from d1)"))
View(sqldf("select BloodPressure,glucose from d1 where Glucose==(select min(Glucose) from d1)"))

sqldf("select BloodPressure  from d1 where Glucose==(select max(Age) from d1)")
sqldf("select BloodPressure  from d1 where Age==(select min(Age) from d1)")
a=sqldf("select Glucose from d1")
head(a)
b=sqldf("select age from d1 order by Glucose desc")
head(b)


#group by
sqldf("select sum(Age) from d1")
View(sqldf("select Age,BMI from d1 where BMI in('33.6','25.6') group by Age"))
View(sqldf("select sum(Age) from d1 where BMI in('33.6','25.6') group by Age"))
#"in' ka mtlb bmi ki value ya to 33.6 ya 25.6 ho
# sbse pehle data ko filter krenge bmi k basis par matlb wo values ko alag kr 
# lenge jinka bmi 33.6 ya 25.6 ab age k according group krenge mtlb jinki
# age same hogi wo add ho jayengi jo age unique hongi wo aise hi aa jayegi 

View(sqldf("select sum(Glucose),Age,BMI from d1 group by Age,BMI"))
sqldf("select sum(Age) from d1 group by Glucose having sum(Age)>0")



#Moreover, the HAVING clause can be used with aggregate functions such as 
#COUNT(), SUM(), AVG(), etc., whereas the WHERE clause cannot be used with them.