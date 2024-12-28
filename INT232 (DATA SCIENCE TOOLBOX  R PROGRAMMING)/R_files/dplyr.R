#The tidyverse is a collection of R packages designed for data science tasks 
#such as data manipulation, visualization, and analysis. 

#The dplyr package in R is one of the most popular packages for data manipulation. 
#It is part of the tidyverse

#Key Features of dplyr:
#  Works seamlessly with data frames and tibbles.
#  Focuses on "verbs" for data manipulation:
                #  filter() → Select rows.
                #  select() → Choose columns.
               #  mutate() → Create or modify columns.
              #  summarize() → Summarize data.
              # arrange() → Sort rows.
#Uses piping (%>%) for chaining multiple operations, making the code readable.


library(dplyr)
library(dplyr)



#1. filter()
#Selects rows that meet specific conditions.
# Example dataset
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Score = c(90, 80, 85, 70),
  Age = c(25, 30, 28, 22)
)

# Filter rows where Score > 80
filtered_data <- filter(data, Score > 80)
print(filtered_data)





#2. select()
#Selects specific columns by name.
#Example 2
# Select only the Name and Score columns
selected_data <- select(data, Name, Score)
print(selected_data)




#3. mutate()
#Adds new columns or modifies existing columns.
# Add a new column for grade based on Score
mutated_data <- mutate(data, Grade = ifelse(Score > 85, "A", "B"))
print(mutated_data)




#4. summarize()
#Summarizes data by calculating aggregate statistics.
# Calculate the average Score
summary_data <- summarize(data, Avg_Score = mean(Score))
print(summary_data)



#5. arrange()
#Sorts rows by one or more columns.

# Arrange data by Score in descending order
arranged_data <- arrange(data, desc(Score))
print(arranged_data)




