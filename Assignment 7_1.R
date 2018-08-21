

1. Histogram for all variables in a dataset mtcars. Write a program to create histograms for all columns.

library(tidyr)
library(ggplot2)

df<-data.frame(mtcars,row.names = NULL, stringsAsFactors = default.stringsAsFactors())
df


#Using this as our data, we can map value as our x variable, and use facet_wrap to separate by the key column

ggplot(gather(df), aes(value)) + 
  geom_histogram(bins = 10) + 
  facet_wrap(~key, scales = 'free_x')


2. Check the probability distribution of all variables in mtcars

# Load package "datasets":
library(datasets)

#Load data "mtcars":
data(mtcars)

#Info about dataset:
?mtcars

#Display datasets:
mtcars

#Display only headers:
head(mtcars)

#Display names of variables:
names(mtcars)

#Display labels of observations:
rownames(mtcars)

#Display info about dataset
dim(mtcars)
nrow(mtcars)
ncol(mtcars)

# Basic statistics for variables:
summary(mtcars)

# Other statistics:
mean(mtcars$mpg)
median(mtcars$mpg)
var(mtcars$mpg)
sd(mtcars$mpg)
range(mtcars$mpg)
IQR(mtcars$mpg)
quantile(mtcars$mpg,0.67)

# Correlation and covariance matrix:
cor(mtcars)
cov(mtcars)

# Pairs plot
pairs(~mpg+.,mtcars)



3. Write a program to create boxplot for all variables.

#boxplot for all variables in mtcars data set. 
ggplot(gather(mtcars), aes(value)) + 
  boxplot(mtcars,bins = 11) + 
  facet_wrap(~key, scales = 'free_x')

#Individual variables boxplot for visibility
#Boxplots for variable "mpg"
boxplot(mtcars$mpg)
#Boxplots for variable "mpg" with some graphical options
boxplot(mtcars$mpg,col="grey",main="Boxplot for variable mpg",xlab="Variable of mpg",ylab="Boxplot")


