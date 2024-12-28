# handling missing data
# is.na() Function for finding missing value
# a logical vector is returned by this function that 
#A NAN value in R represents “NOT A NUMBER”, It is basically any numeric
#calculations with an undefined result, such as ‘0/0’.This exists only in 
#vectors with numeric datatype.

#A NA value in R represents "NOT AVAILABLE". This can exist in any sort of 
#numeric or character vectors. It is generally interpreted as missing values.
x<-c(NA,3,4,NA,NA,NA)
is.na(x)
#is.nan() function for finding missing values:
y<-c(NA,3,4,NA,NA,NA,0,0,0/0)
is.nan(y)
is.na(y)

# removing NA or NAN values
x<-c(1,2,NA,3,NA,4)
d<-is.na(x)
d
x[!d]
x<-c(1,2,0/0,3,NA,4,0/0)
x
x[!is.na(x)]


# creating a data frame
df<-data.frame(c1=1:8,c2=factor(c("B","A","B","C","A","C","B","A")))
df

# filling some NA in data frame
df[4,1]<-df[6,2]<-NA
df
na.omit(df)  #Remove rows consist with NA values

# printing all the levels(NA is not considered one)
levels(df$c2)  # factorise the data

# fails if NA is encountered
na.fail(df)


# excludes every row containing even one NA
na.exclude (df)

# Create a data frame with 5 rows and 3 columns
data <- data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, NA, 5),
  C = c(1, 2, 3, NA, NA)
)
# View the resulting data frame
data
sum(is.na(data))

# Finding missing values column wise
colSums(is.na(data))

# Install and load the 'visdat' package
install.packages("visdat")
library(visdat)
# Plot the missing value diagram
vis_miss(data)





#fill(data, ..., .direction = c("down", "up", "downup", "updown"))
#data: The dataset you want to fill missing values in.

#...: Columns you want to fill.
#.direction: Direction for filling. Can be "down", "up", "downup", or "updown".
#down: Fills missing values with the previous row's value (forward fill).
#up: Fills missing values with the next row's value (backward fill).
#downup: First forward fill and then backward fill.
#updown: First backward fill and then forward fill.


#Example 1: Forward Fill (down)
library(tidyr)

# Create a sample dataset with missing values
data <- data.frame(
  Name = c("Alice", NA, "Bob", NA, "Charlie"),
  Score = c(90, 85, 80, 75, 95)
)

# Forward fill missing values in the 'Name' column
filled_data <- fill(data, Name, .direction = "down")
print(filled_data)




#Example 2: Backward Fill (up)
# Backward fill missing values in the 'Name' column
filled_data_backwards <- fill(data, Name, .direction = "up")
print(filled_data_backwards)





#Example 3: Fill Multiple Columns
# Create a dataset with missing values in multiple columns
data2 <- data.frame(
  Name = c("Alice", NA, "Bob", NA, "Charlie"),
  Score = c(90, NA, 80, 75, 95),
  Age = c(25, NA, 30, NA, 28)
)

# Forward fill missing values in both 'Name' and 'Score' columns
filled_data_multiple <- fill(data2, Name, Score, .direction = "down")
print(filled_data_multiple)




#Example 4: Fill with Specific Values
# Create a dataset with missing values
data3 <- data.frame(
  Name = c("Alice", NA, "Bob", NA, "Charlie"),
  Score = c(90, NA, 80, 75, 95)
)

# Replace missing values in 'Name' with "Unknown" and 'Score' with 0
filled_data_replace <- replace_na(data3, list(Name = "Unknown", Score = 0))
print(filled_data_replace)


#Summary of Methods to Fill Missing Values
#fill(): Fills missing values using the previous or next value (forward or backward fill).
#replace_na(): Replaces missing values with specific values (e.g., 0, "Unknown", or any other value).
