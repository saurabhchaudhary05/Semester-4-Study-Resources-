#The tidyr package in R is part of the tidyverse and is specifically 
#designed to help clean and organize data for analysis. 


#Key Features of tidyr:
#  1) Reshaping Data:
#  Convert wide-format data to long-format and vice versa.
#  2) Dealing with Missing Data:
 # Fill, drop, or expand missing rows/columns.
#  3) Splitting and Combining Columns:
#  Split a single column into multiple columns or combine multiple columns into one.*/

#1. pivot_longer()
#Converts wide-format data into long-format (more rows, fewer columns).

#2. pivot_wider()
#Converts long-format data back into wide-format (fewer rows, more columns).

#3. separate()
#Splits a single column into multiple columns.

#4. unite()
#Combines multiple columns into a single column.


install.packages("tidyr")
#or
intsall.packages("tidyverse")
# load the tidyr package
library(tidyr)
n=10
#creating a data frame
tidy_dataframe=data.frame(s_no=c(1:n),Group.1=c(23,345,76,212,88,199,72,35,90,265),Group.2=c(117,89,66,334,90,101,178,233,45,200),Group.3=c(29,101,239,289,176,320,89,109,199,56))

# print the elements of data frame
tidy_dataframe

#"1. gather function: It takes multiple columns and gather them into key-value
#pairs"
long<- tidy_dataframe %>% gather(Group,Frequency,Group.1:Group.3)
long

long <- tidy_dataframe %>% 
  gather(Group, Frequency, 
         Group.1:Group.3) 


#2.separate() function;It converts longer data to a wider format. 
#The separate() function turns a single character column into multiple columns.
# use separate() function to make data wider 
separate_data <- long %>%  
  separate(Group, c("Allotment",  
                    "Number")) 

# print the wider format 
separate_data 



#3) unite() function: It merges two columns into one column
#The unite() function is a convenience function to paste together 
#multiple variable values into one

unite_data <- separate_data %>% 
  unite(Group, Allotment,  
        Number, sep = ".") 

# print the new data frame 
unite_data 



#spread() function: It helps in reshaping a longer format to a wider format. 
#The spread() function spreads a key-value pair across multiple columns.
back_to_wide <- unite_data %>%  
  spread(Group, Frequency) 

# print the new data frame 
back_to_wide 

#nest()-convert any column into list so it hide the data of particular column
#nest() function: It creates a list of data frames containing all the 
#nested variables. Nesting is implicitly a summarizing operation.
df <- tidy_dataframe 
tidy_dataframe
# nest column Group.1 in  
# tidy_dataframe using nest() 
df %>% nest(data = Group.1)



#fill() function: Used to fill in the missing values in selected columns
#using the previous entry.
# import the tidyr package 
df <- data.frame(Month = 1:6,  
                 Year = c(2000, rep(NA, 5))) 

# print the df data frame 
df                   # Output (i) 

# use fill() to fill missing values in  
# Year column in df data frame 
df %>% fill(Year)    # Output (ii)


#full_seq() function: It basically fills the missing values in a vector which
#should have been observed but weren’t. The vector should be numeric.
# import the tidyr package 
library(tidyr) 

# creating a numeric vector 
num_vec <- c(1, 7, 9, 14, 19, 20) 

# use full_seq() to fill missing 
# values in num_vec 
full_seq(num_vec, 1)



#drop_na() function: This function drops rows containing missing values.
# import tidyr package 
library(tidyr) 

# create a tibble df with missing values 
df <- tibble(S.No = c(1:10), 
             Name = c('John', 'Smith', 'Peter', 
                      'Luke', 'King', rep(NA, 5))) 

# print df tibble 
df                    # Output (i) 

# use drop_na() to drop columns  
# in df with missing values  
df %>% drop_na(Name)  # Output (ii)


#replace_na() function: It replaces missing values.
# import tidyr package 
library(tidyr) 

df <- data.frame(S.No = c(1:10), 
                 Name = c('John', 'Smith',  
                          'Peter', 'Luke', 
                          'King', rep(NA, 5))) 

df                                      # Output (i) 

# use replace_na() to replace missing values or na 
df %>% replace_na(list(Name = 'Henry')) # Output (ii)




#unnest() function: It basically reverses the nest operation. 
#It makes each element of the list its own row.
# import the tidyr package 
library(tidyr) 

df <- iris 
names(iris) 

# nesting the species column in  
# the df data frame using nest() 
head(df %>% nest(data = c(Species)))  # Output (i) 

# unnesting the species column  
# in the df data frame using unnest() 
head(df %>% unnest(Species,.drop = NA, 
                   .preserve = NULL)) # Output (ii)