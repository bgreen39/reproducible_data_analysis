#Homework 3: Vectors, types, and coercion

##1. Using class()to determine the type of vectors
class(c(TRUE,FALSE,FALSE)) #This is a "logical" vector.
class(c(1,2,3)) #This is a "numeric" vector.
class(c(1.3,2.4,3.5)) #This is also a "numeric" vector.
class(c("a","b","c")) #This is a "character" vector.

##2. What type are the following vectors and why?
c(1,2,"a") #This is a "character" vector because the 1 and 2 were converted to a character. 
c(TRUE,FALSE,2) #This is a "numeric" vector because the TRUE and FALSE were converted to a numeric vector (where TRUE=1 and False=2)

#Basic R Operations
library(tidyverse)
read_csv("med_enz.csv")

med_enz <-read_csv("med_enz.csv")
class(med_enz)
str(med_enz)
nrow(med_enz)
glimpse(med_enz)

#The code below creates the histogram plot for the med_enz.csv data
p <- ggplot(data = med_enz, aes(x = activity.nM.hr)) + 
  geom_histogram()
print(p)
ggsave(filename = "plots/hmk_2_plot.png", plot = p, height = 3, width = 4, units = "in", dpi = 300)
