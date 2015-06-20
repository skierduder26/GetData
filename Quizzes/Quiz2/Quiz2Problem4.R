# Quiz 2 Problem 4

con <- url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode <- readLines(con)
close(con)
htmlCode

# Problem 5

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
download.file(fileURL,destfile="noaa_data.for", method = "curl")
noaa <- read.fwf("noaa_data.for", widths = c(15,4,4,-5,4,4,-5,4,4,-5,4,4), header = FALSE, skip = 4)
sum(noaa[,4])
