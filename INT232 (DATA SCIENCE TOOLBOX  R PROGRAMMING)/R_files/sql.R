getwd()

#In R, the read.csv() function is used to read CSV (Comma Separated Values) files
#into R as data frames. The syntax for this function is 
#read.csv(file, header = TRUE, sep = ",", ...), where:
#file: Specifies the path to the CSV file to be imported.
#header: A logical value indicating whether the file has a header line with 
#column names. Default is TRUE.
#sep: Specifies the delimiter used in the CSV file. Default is ",".
#The readxl package in R is used to read data from the Excel files, i.e., 
#the format . xls and . xlsx files. The readxl package in R provides a function
#called read_excel() which is used to read the data from Excel files.
# reading data from an excel file 
#data <-read_excel('C:\\Users\\GFG19565\\Downloads\\CardioGoodFitness.xlsx') 
#read.csv() function in R Language is used to read “comma separated value” 
#files. It imports data in the form of a data frame.
#The read. csv function reads a file into a data frame object. 
#The read_csv function reads the file into a tibble object. 
#The read.csv() function in R is part of the utils package, 
#which is automatically loaded when you start your R session.

#sqldf is an R package for execute  SQL statements on R data frames,

library("readxl")
library("sqldf")

#file_path <- file.choose()
# Read the file assuming it's a CSV
#data <- read.csv(file_path)

stu=read.csv("student.csv",TRUE,",")
stu=read.csv("student.csv",stringsAsFactors=FALSE)
class(stu)
View(stu)
View(sqldf("select * from stu")) # display 10 rows
sqldf("select count(*) from stu")
sqldf("select * from stu where marks>80")
sqldf("select * from stu where marks<80")
sqldf("select * from stu where name=='Veer'")
sqldf("select * from stu where marks==45")
sqldf("select name from stu where marks==45")
sqldf("select  rollno from stu where marks==45")
sqldf("select distinct name from stu")
sqldf("select * from stu limit 4")  
sqldf("select * from stu order by name ")  #sorting
sqldf("select * from stu order by name desc")  #sorting
sqldf("select * from stu where name like '%s'")
sqldf("select * from stu where name like 'v%'")
sqldf("select * from stu where name like '%k%'")
sqldf("select name as N, marks as M from stu ")
sqldf("select sum(marks) from stu")
sqldf("select sum(rollno) from stu")
sqldf("select avg(marks) from stu")
sqldf("select min(marks) from stu")
sqldf("select max(marks) from stu")
nrow(stu)

ncol(stu)     

