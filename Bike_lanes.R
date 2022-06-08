library(tidyverse)
library(sf)
library(tmap)
library(RColorBrewer)
library(ggplot2)

RColorBrewer::display.brewer.all()
# import from ESRI gdb

velo <- st_read("/Users/philipbligh/Downloads/Velo.gdb")

velo_layers <- st_layers(dsn = "/Users/philipbligh/Downloads/Velo.gdb")

lines <- st_read("/Users/philipbligh/Downloads/Velo.gdb", layer = "RESEAU_1991_2016")  %>% 
  st_transform(4326)

zones<- st_read("/Users/philipbligh/Downloads/Velo.gdb", layer = "ZONES")  %>% 
  st_transform(4326)

glimpse(zones)

glimpse(lines)

`1986` <- lines %>% filter(An1986 == 1)

`1991` <- lines %>% filter(An1991 == 1)

`1996` <- lines %>% filter(An1996 == 1)

`2001` <- lines %>% filter(An2001 == 1)

`2006` <- lines %>% filter(An2006 == 1)

`2011` <- lines %>% filter(An2011 == 1)

`2016` <- lines %>% filter(An2016 == 1)

glimpse(`1986`)


plot(`1986`["An1986"])
plot(`1991`["An1986"])
plot(`1996`["An1991"])
plot(`2001`["An1996"])
plot(`2006`["An2001"])
plot(`2011`["An2006"])
plot(`2016`["An2011"])


tmap_mode(mode="plot")

map_1986 <- tm_shape(`1986`) +
  tm_lines(col = "blue")

map_1991 <- tm_shape(`1991`) +
  tm_lines(col = "red") + 
  tm_shape(`1986`) + 
  tm_lines(col="blue")

map_1996 <- tm_shape(`1996`) +
  tm_lines(col = "red") + 
  tm_shape(`1991`) + 
  tm_lines(col="blue")

map_2001 <- tm_shape(`2001`) +
  tm_lines(col = "red") + 
  tm_shape(`1996`) + 
  tm_lines(col="blue")

map_2006 <- tm_shape(`2006`) +
  tm_lines(col = "red") + 
  tm_shape(`2001`) + 
  tm_lines(col="blue")

map_2011 <- tm_shape(`2011`) +
  tm_lines(col = "red") + 
  tm_shape(`2006`) + 
  tm_lines(col="blue")



