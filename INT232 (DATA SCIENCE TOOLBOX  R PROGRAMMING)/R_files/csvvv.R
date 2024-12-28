getwd() # function to know the current working directory
setwd("path of working directory") #function to reset the working directory

#sorting
v<-c(12,34,56,32,35,98,33,57,14,59,13,21)
sort(v)
sort(v,decreasing=TRUE)

order(v) # sort the data and print the position of your sorted 
# order(v) ka matlab hota h ki ye elements k index ko print krwata h jaise example 
# v ka sbse chhota element 12 h aur uska index 1 h to order(v) m 1 likh diya
# dusra sabse chhota element 13 h uska index 11 h to 11 ko order(v) m likh diya 
# theesra sabse choota element 14 h uska index 9 h to usko order(v) m likh diya
# aise likhte jate h 


# v(order(v)) ya sort(v) likhu dono ek hi baat h



#x[order(-x)]
# Equivalent to:
#x[order(x, decreasing = TRUE)]
# Equivalent to:



#sort(x, decreasing = TRUE)
v[order(v)]
v



rank(v)   # indexing of your ordered data and print index no 

# jis order m elements diye h ussi order m unki rank likh dete h jaise jab hum 
# v ko increasing order m likhenge to 12 ki rank 1 h 13 ki rank 2 h 14 ki rank 3 h 
# to hmne rank m likha h 12 ki jgah 1 ...13 ki jgah 2...33 ki 7 ....



v[rank(v)]
# v[rank(v)]  isko rank se likhenge jaise rank m sbse pehle 1 aa rha h to v ka 
# 1st element likh denge ....rank m 7 aa rha h to v ka 7th element likh denge 
# rank m 9 aa rha h to v ka 9th element aa rha h ..rank m 5 aa rha h to v ka
# 5th element aa jayega..............

x <- c(1,1,13,4,12,4,3,14,23,7)
rank(x)
# yaha jaise spearsman coefficient hota h maths m bilkul aise hi yaha hota h
