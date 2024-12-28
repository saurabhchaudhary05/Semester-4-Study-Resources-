trees
nrow(trees)
class(trees)
dim(trees)
str(trees)
View(trees)
head(trees)   #display 1st 6 elements
tail(trees)    #last 6 elements
mtcars
head(trees,n=15)   # first 15 elements
tail(trees,n=8)    # last 8 elements
mean(trees$Height)     
median(trees$Girth)
sd(trees$Girth)
max(trees$Girth)
min(trees$Girth)
summary(trees)   # 1st and 3rd quartiles

#The first quartile (Q1) is the median of the lower half of the data set
#The third quartile (Q3) is the median of the upper half of the data set
subset(trees,Height>50)
subset(trees, Volume>10.6,select=-Height)
subset(trees, Volume>10.6,select=c(-Height,-Girth))
trees[1,]

trees[,2]
trees[c(2:10),]
trees[,c(1:3)]
trees[,c(1,3)]
trees[31,1]
