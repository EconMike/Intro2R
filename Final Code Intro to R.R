
1+1

"x"+1 


# Getting Help

#Lots of ways to find help with coding.
#1. Googling
#2. Stackexchange
#3. Rstudio community forum
#4. Free online tutorials
#5. R itself

help.search('mean')
help(mean)

#https://community.rstudio.com/
#https://stackoverflow.com/questions


setwd("F:/R Class2") # the wrong syntax for directories 

getwd()  #shows your workspace during r session

setwd("F:/R Class")   

getwd() 

#assignment operator

a <- 1

a

b <<- 1
b
1 -> c
c
2 ->> d
d
E= 3
E

xy<<-3



3->xyz
3->>xyza
xyzab = 3



#Back to Slides 17- 21
#Creating data



x <- c(1,3,2,5) 

x  # prints the object


y = c(1,4,3)
y
v <- TRUE 
print(class(v))


#Valid R objects

total <-3
total

Sum <-3
Sum

.fine.with.dot <-3
.fine.with.dot 

this_is_acceptable <-3
this_is_acceptable

Number5 <-3
Number5

#Not Valid R objects



tot@l<-3

5um<-3

_fine<-3

TRUE<-3


.0ne<-3


#Creating string objects and random numbers



x <- c("Hello", "world!")

x

RandomNumbers <- runif(100, 1, 100)

RandomNumbers

#[demo]
#slides 23 - 34

#Basic types of data objects in R are:


#vector

x<-c(5,5,5,19,4,1,10,17)
n<-c(2,3,5)

x
n
# is a basic data structure in R. It contains elements of the same type

#list

z<-list(x,n,3)

z

#Lists are the R objects which contain elements of different types like ??? numbers, strings, vectors, logical values


a <- c(1,2,3,4)
b <- c("red", "white", "red","green")

# data frame
mydata <- data.frame(a,b)
mydata

#preview the data
head(mydata)

#data frame is a table like structure in which each column #contains values of one variable and each row contains one #set of values from each column


#Create a data frame

data <- read.table(header=TRUE, text='
YEAR	     DATA
2000  	      45
2001  	      55
2002  	      53
2003	      54
2004	      49
2005	      55
2006	      65
2007	      54
2008	      49
2009	      53
2010	      58
2011	      55
2012	      59
')

data
head(data,3)
#Rename variables


a <- c(1,2,3,4)
b <- c("red", "white", "red","green")

mydata <- data.frame(a,b)

mydata

names(mydata) <- c("x1","x2") 
mydata

#Checking data types

typeof(mydata)
length(mydata) # number of elements or components
str(mydata)    # structure of an object
class(mydata)  # class or type of an object
names(mydata)  # names


#Quick mention of missing values

NA==0

max(c(8,10,12))

max(c(NA, 10, 12))

max(c(NA, 4, 7), na.rm=T)

x <- c(1,2,NA,3)
mean(x) # returns NA
mean(x, na.rm=TRUE) # returns 2


# Demo ends
# slides 35- 46

#Functions and packages


times<-function(x,y){
  x*y
}

times(2,4)


install.packages("ggplot2")
library(ggplot2)



install.packages(c("dplyr", "ggplot2"))

library(ggplot2)

library(dplyr)






#FILE TYPES

#Text file- .txt extension
#CSV- .csv extension
#Excel- .xls or .xlsx extension



#IMPORTING DATA
getwd()
df<-read.table('iris_data.txt',sep = ",")

head(df)

df<-read.table('iris_data.txt',sep = "," ,col.names=c("VAR1", "VAR2", "VAR3", "VAR4","VAR5"))

head(df)



#import CSV

df<-read.csv(file="PRAC_DATA.csv")
df

read.table("PRAC_DATA.csv", header=TRUE, sep=",")


#import Excel

library(readxl)

df<- read_excel("PRAC_DATA.xls", sheet = "Sheet1")

head(df)

#demo ends
# slides 48-  end


#Export data

tdata <- c(76,95,77,78,99)
write.csv(tdata, file = "data.csv")


library(writexl)

a <- c(1,2,3,4)
b <- c("red", "white", "red","green")
mydata <- data.frame(a,b)
names(mydata) <- c("x1","x2") 
mydata
getwd()
write_xlsx(mydata,"file name.xlsx")

write_xlsx(df,"file name.xlsx")

# Loading mtcars data
data("mtcars")

# Writing mtcars data
write.table(mtcars, file = "mtcars.txt", sep = "\t",
            row.names = TRUE, col.names = NA)


saveRDS(mydata, file = "stuff.RDS") 
 readRDS("stuff.RDS")
a<- readRDS("stuff.RDS")
