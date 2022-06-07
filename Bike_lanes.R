library(tidyverse)
library(sf)
library(tmap)

# import from ESRI gdb

velo <- st_read("/Users/philipbligh/Downloads/Velo.gdb")

velo_layers <- st_layers(dsn = "/Users/philipbligh/Downloads/Velo.gdb")

lines <- st_read("/Users/philipbligh/Downloads/Velo.gdb", layer = "RESEAU_1991_2016")  %>% 
  st_transform(4326)

glimpse(lines)

count(lines, Typo_2001, na.rm = T)


