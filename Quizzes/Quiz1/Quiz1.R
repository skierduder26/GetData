setwd("~/Coursera/GetData/Quizzes/Quiz1")

# Question 1 and 2

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileURL,destfile="housing_data.csv", method = "curl")
housing_data <- read.csv("housing_data.csv")
names(housing_data)
housing_data$VAL
housing_data$VAL==24
sum(housing_data$VAL==24)
?sum
sum(housing_data$VAL==24, na.rm = TRUE)
housing_data$FES


# Question 3

NatGasURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(NatGasURL, destfile = "NatGas.xlsx", method = "curl")
dat <- read.xlsx("NatGas.xlsx",sheetIndex = 1, colIndex = 7:15, rowIndex = 18:23, header = TRUE)
sum(dat$Zip*dat$Ext,na.rm=T)

# Question 4

library(XML)
BaltURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(BaltURL, destfile = "BaltRestData.xml", method = "curl")
BaltRestData <- xmlTreeParse("BaltRestData.xml",useInternal = TRUE)
rootNode <- xmlRoot(BaltRestData)
zipcode_vector <- xpathSApply(rootNode, "//zipcode", xmlValue)
length(zipcode_vector[zipcode_vector=='21231'])

# Question 5

library(data.table)
housingURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(housingURL,destfile="ID_housing_data.csv", method = "curl")
DT <- fread("ID_housing_data.csv")
mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)
sapply(split(DT$pwgtp15,DT$SEX),mean)
DT[,mean(pwgtp15),by=SEX]
mean(DT$pwgtp15,by=DT$SEX)
rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]
tapply(DT$pwgtp15,DT$SEX,mean)



