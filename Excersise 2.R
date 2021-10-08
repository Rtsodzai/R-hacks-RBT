library(tidyverse)
library(R.utils)

myzipfiles <- list.files(path = 'Zip files/Excersise+Data/Excersise Data/',
                         full.names = T)

myzipfiles

for(k in 1:4) {
  print(myzipfiles[k])
  gunzip(myzipfiles[k], remove = F)
}

file.remove("Zip files/Excersise+Data/Excersise Data/2013.csv")

rm_files <- list.files(path = 'Zip files/Excersise+Data/Excersise Data/', 
           pattern = 'csv$', full.names = T)

walk(.x = rm_files, .f = file.remove)


walk(.x = myzipfiles, .f = gunzip, remove = F)
