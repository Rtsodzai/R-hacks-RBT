library(R.utils)



install.packages('tidyverse')

library(tidyverse)


walk()

myzipfile <- list.files('Zip files/', pattern = 'gz', full.names = T)

rm(i)
rm(myzipfile)

myzipfile

# walk loop: 2 arguments
walk(.x = myzipfile, .f = gunzip, remove = F)

#if some files are already unzipped.
#safely avoids errors, loops around the error.

walk(.x = myzipfile, .f = safely(gunzip), remove = F)
