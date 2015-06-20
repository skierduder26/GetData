# Quiz 3 Problem 1

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileURL,destfile="housing_data.csv", method = "curl")
housing_data <- read.csv("housing_data.csv")

agricultureLogical <- housing_data$ACR >= 3 & housing_data$AGS >= 6
which(agricultureLogical)

# Answer: 125, 238,262

# Quiz 3 Problem 2

library(jpeg)
jeff <- readJPEG("getdata_jeff.jpg", native = TRUE)
quantile(jeff, probs = seq(0,1,0.1))

# Answer: -15259150 -10575416

# Quiz 3 Problem 3

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileURL,destfile="GDP_data.csv", method = "curl")
GDP_data <- read.csv("GDP_data.csv")

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(fileURL,destfile="EDU_data.csv", method = "curl")
EDU_data <- read.csv("EDU_data.csv")

reduced_GDP_data = GDP_data[5:194,]

colnames(reduced_GDP_data)[2] <- "Rank"
colnames(reduced_GDP_data)[1] <- "CountryCode"
reduced_GDP_data <- reduced_GDP_data[,-3]
reduced_GDP_data <- reduced_GDP_data[,1:4]
colnames(reduced_GDP_data)[3] <- Country
colnames(reduced_GDP_data)[3] <- "Country"
colnames(reduced_GDP_data)[4] <- "GDP"


rankasfactor <- as.factor(reduced_GDP_data[,2])
rankaschar <- as.character(rankasfactor)
rankasnumber <- as.numeric(rankaschar)
reduced_GDP_data[,2] <- rankasnumber


mergedData <- merge(reduced_GDP_data,EDU_data, by.x = "CountryCode", by.y = "CountryCode")

arrange(mergedData,desc(Rank))


# Answer: 189 matches, 13th country is St. Kitts and Nevis


# Quiz 3 Question 4:

highGDP_OECD <- mergedData[mergedData$Income.Group == "High income: OECD","Rank"]
mean(highGDP_OECD)
highGDP_nonOECD <- mergedData[mergedData$Income.Group == "High income: nonOECD","Rank"]
mean(highGDP_nonOECD)


# Answer: 32.96667, 91.91304

# Quiz 3 Question 5:

quantile(mergedData$Rank,seq(0,1,0.2))

sorted_data = arrange(mergedData,Rank)

table(sorted_data[1:38,"Income.Group"])

# Answer: 5
