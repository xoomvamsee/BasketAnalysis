#$%$&&^&^%%^ Changes Done to this file #^**&&^#$#

#Set the Working directory where the files reside
setwd("D:/xoom")
# read the csv file
mydata = read.csv("mydata.csv")
mydata
str(mydata)
# Read strings as Strings
mydata_2 = read.csv("mydata.csv", stringsAsFactors = FALSE)
mydata_2
str(mydata_2)
# Read the first line as data
mydata_2 = read.csv("mydata.csv", stringsAsFactors = FALSE,header = FALSE)
mydata_2
str(mydata_2)

#Another CSV file
whodata <- read.csv("who.csv")
View(whodata)
-----------------------
#Reading Excel files
#Install and load the package
install.packages("xlsx")  
library(xlsx)

#Read the excel file
mydataXL <- read.xlsx("mydataxl.xlsx", sheetName = "Sheet1") 
mydataXL
# Read the second sheet - marks
marksdata <- read.xlsx("mydataxl.xlsx", sheetName = "marks") 
marksdata

-------------------------
#xls file reading
install.packages("readxl")
library(readxl)
mydata <- read_excel("mydataxl1.xls", sheet = "Sheet1")
mydata

-------------------------
#Reading XML file

install.packages("XML")
library(XML)
#Read XML doc
xmldoc <- xmlParse("catalog.xml")
xmldoc # still the doc is XML
rootNode <- xmlRoot(xmldoc)
rootNode
rootNode[1]
data <- xmlSApply(rootNode,function(x) xmlSApply(x, xmlValue))
data
cd.catalog <- data.frame(t(data),row.names=NULL)
cd.catalog

-----------------------------
#reading JSON file
  install.packages("jsonlite")
  library(jsonlite)

# http://www.json.org/example

dat.1 <- fromJSON("http://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote?format=json")
dat.1
dat <- dat.1$list$resources$resource$fields
dat

----------------------------
#Reading mysql
  
install.packages("RMySQL")
library(RMySQL)
MySQL <- MySQL()
MySQLcon <- dbConnect(MySQL, user='root', password='mysql123',
                      dbname='xoom')

dbListTables(MySQLcon)

dbReadTable(MySQLcon, "employee")
data1 <- dbReadTable(MySQLcon, "employee")
View(data1)
