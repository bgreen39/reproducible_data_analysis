#Homework 4
#Load the packages that this script will use.
library (tidyverse)
chris <- read_csv("chris_names_wide.csv") #Dataset of baby "Chris" names that will be used to create different plots!

## Converting to tidy (long) format
d_long <- pivot_longer(data=chris, cols = -year, names_to = "sex", values_to = "n")

#Below shows how to get line, "smooth" line, and box plots. Title format: ("y-axis" vs. "x-axis")
##Number of Babies vs. year (Line Plot)
ggplot(data=chris) +
  geom_point(mapping = aes(x=year, y=male), color = "orange") +
  geom_point(mapping = aes(x=year, y=female), color = "purple")

##Number of Babies vs. year ("smooth" Line Plot)
ggplot(data=chris) +
  geom_smooth(mapping = aes(x=year, y=male), color = "orange") +
  geom_smooth(mapping = aes(x=year, y=female), color = "purple")

##Number of people named 'Chris' vs. sex (Box Plot)
ggplot(data = d_long, aes(x=sex, y=n)) +
  geom_boxplot()
