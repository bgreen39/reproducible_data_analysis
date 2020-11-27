#Step_1: Import data-Here you import the dataset, and I printed it to see what the data looked like.
CCE2 <- read.csv('~/Downloads/CCE2_121W_34N_Apr2013_Apr2014.csv',skip=5,sep=",",header=TRUE) #using the "skip" function aligns the headers in the data to the column names in R
print(CCE2)
print(str(CCE2)) #To look at structure of the data use the 'str' function.

#Step_2: Combining "Date" and "Time columns to be one column.
as.POSIXct(paste(CCE2$Date, CCE2$Time), format="%m/%d/%Y %H:%M")

#Step_3:Rename columns to "easier" name.
names(CCE2)[names(CCE2)=="pCO2.SW..sat..uatm"]<-"pCO2_SW"
names(CCE2)[names(CCE2)=="pH..total.scale."]<-"pH_SW"

#Step_4:Plot pCO2 and pH vs. time on same plot
library(tidyr)
library(ggplot2)
library(scales)
ggplot(CCE2, aes(x=Date, y=pCO2_SW))
scale_x_date(date_breaks = "months")


