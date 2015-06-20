# Quiz 2 Question 2

library("sqldf") #Need to turn off RMySQL

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileURL,destfile="acs_data.csv", method = "curl")
acs <- read.csv("acs_data.csv")
sqldf("select pwgtp1 from acs where AGEP < 50")

# Quiz 2 Question 3

uniqueAGEP <- unique(acs$AGEP)

sqldf("select distinct AGEP from acs")