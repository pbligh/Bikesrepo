library(tidyverse)
library(sf)
library(tmap)

# import from ESRI gdb

velo <- st_read("/Users/philipbligh/Downloads/Velo.gdb")

velo_layers <- st_layers(dsn = "/Users/philipbligh/Downloads/Velo.gdb")

lines <- st_read("/Users/philipbligh/Downloads/Velo.gdb", layer = "RESEAU_1991_2016")  %>% 
  st_transform(4326)

glimpse(lines)

`1986` <- lines %>% filter(An1986 == 1)

`1991` <- lines %>% filter(An1991 == 1)

`1996` <- lines %>% filter(An1996 == 1)

`2001` <- lines %>% filter(An2001 == 1)

`2006` <- lines %>% filter(An2006 == 1)

`2011` <- lines %>% filter(An2011 == 1)

`2016` <- lines %>% filter(An2016 == 1)


plot(`1986`["Statut"])




