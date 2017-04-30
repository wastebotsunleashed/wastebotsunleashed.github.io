library("data.table")
library("ggmap")
library("maptools")
library("rgdal")
library("sp")

# Code based on 
# https://journal.r-project.org/archive/2013-1/kahle-wickham.pdf

setwd("C:/Users/Orysya/Desktop/Women_Hackathon/Data_Potential_LongLats/Addresses/") #Define the path for where the shape file is located
shapefile <- readShapeSpatial('ADDRESS_APN.shp')

names(shapefile)

testDT <- as.data.table(shapefile)

data.table::fwrite(x = testDT, file = "addresses.csv")