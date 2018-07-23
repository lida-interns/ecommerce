library(tidyverse)
library(ggplot2)
library(rgdal)  
library(RColorBrewer)
library(rworldmap)
library(leaflet)
library(maps)
library(plotly)

df <- read_csv("../data/data.csv")

head(df)
dim(df)

country_count <- count(df, vars = c(Country))

barplot(country_count$n, names.arg=country_count$n)



m <- leaflet() %>%
  addTiles()
m
