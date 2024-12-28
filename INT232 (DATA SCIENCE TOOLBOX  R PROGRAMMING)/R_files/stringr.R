#Once installed, the package can be loaded into the R session using 
#the library() function.
install.packages("stringr")
#Regular expressions are a powerful way to search and manipulate strings
# a regular expression is a sequence of characters that define a search pattern
# mainly for use in pattern matching withtext string ,typically regex pattern consist
#of a combination 
library(stringr)
#substitute $ with ! or $sign change with !
sub(pattern="\\$","\\!","I love R$")
#substitutes ^ with carrot(it means in the place of power symbol they print "carrot")
sub(pattern="\\^","carrot","My daughter has a ^ with almost every meal!")

#substitute \\ with whitespace
#to replace the first matching occurrence of a pattern use sub()
 #to replace all matching occurrences of a pattern use gsub()

gsub(pattern="\\\\"," ","I\\need\\space")
new<-c("New York","new new York","New New New York")
new

# default case is sensitive
sub("New",replacement="Old",new)
sub("New",replacement="Old",new,ignore.case=TRUE)  # error
gsub("New",replacement="Old",new)
gsub("New",replacement="Old",new,ignore.case=TRUE)
x<-"I like this! #this , @whereas_my, I like R (v3..2.2) #rrrrrrr2015"
x
# remove space or tabs
gsub(pattern = "[[:blank:]]",replacement= "",x)

# replace punctuation with whitespace
gsub(pattern = "[[:punct:]]",replacement= "",x)
gsub(pattern = "[[:punct:]]",replacement= " ",x)

#remove alphanumeric characters
gsub(pattern = "[[:alnum:]]",replacement= "",x)

#to find exactly where the pattern exists in a string use regexpr():
x<-c("v.111","0v.11","00v.1","000v.","00000")
regexpr("v.",x)   #first output is index number
regexpr("0v",x)






#stringr functions
#String Concatenation using str_c( )
library("stringr")
str_c("Geeks", " ", "For", " ", "Geeks")

#Substring Extraction using str_sub( )
str_sub("Geeks For Geeks", 1, 5)

#Character Replacement using str_replace( )
#str_replace(string, pattern, replacement, fixed, trim)
str_replace("Hello World", "World", "Universe")


#Pattern Matching using str_detect( )
#str_detect(string, pattern, negate, collate, regex)
str_detect("Geeks for Geeks", "Geek")


#Regular Expressions using str_extract( ) and str_replace_all( )
#str_extract(string, pattern, simplify, ignore_case, opts_regex)
str_extract("Hello 123 World", "\\d+")


#str_replace_all(string, pattern, replacement, simplify)
str_replace_all("Hello 123 World","\\d+", "999")


#String Splitting using str_split( )
#String splitting involves splitting a 
#string into multiple substrings based on a delimiter.
#str_split(string, pattern, simplify, n, discard_empty)
str_split("apple, orange, banana", ",")


#String Padding using str_pad( )
#String padding involves adding characters to a string to make it a certain 
#length. The str_pad() function in the Stringr package can be used to pad strings
#str_pad(string, width, side, pad, truncate)
str_pad("123", width = 5, side = "left", pad = "0")
str_pad("123", width = 6, side = "left", pad = "1")

#Case Conversion using str_to_upper( ) and str_to_lower( )
#str_to_upper(string, locale) or str_to_lower(string, locale)
str_to_upper("hello world")

# For conversion to lower case
str_to_lower("HELLO WORLD")


#String Trimming using str_trim( )
#str_trim(string, side, whitespace, pattern, fixed)
str_trim("   GFG   ")
#str_replace_all(string, pattern, replacement, simplify)

str_replace_all("Hello 123 World", "//d+", "999")
str_replace_all("Hello 123 World", "H", "999")

