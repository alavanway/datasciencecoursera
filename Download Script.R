## Download a .csv
if(!file.exists("data")) {
        dir.create("data")
}
fileURL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileURL, destfile = "./data/camera.csv", method = "curl")
DownloadDate <- date()

CameraData <- read.table("./data/camera.csv", header = TRUE, sep = ",")

## Download an .xlsx (Need "xlsx" package)
if(!file.exists("data")) {
        dir.create("data")
}
fileURLxlsx <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileURLxlsx, destfile = "./data/cameras.xlsx", method = "curl")
downloadDate <- date()

cameraDataxlsx <- read.xlsx("./data/cameras.xlsx", sheetIndex = 1)

## Download from an XML file
fileURLXML <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileURLXML, useInternal = TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)

xpathSApply(rootNode, "//name", xmlValue)
xpathSApply(rootNode, "//price", xmlValue)