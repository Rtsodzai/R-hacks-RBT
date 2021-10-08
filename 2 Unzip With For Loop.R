
install.packages('R.utils')

library(R.utils)

list.files(path = 'Zip Files', pattern = 'gz')
myzipfile <- list.files(path = 'Zip Files/',
                        pattern = 'gz',full.names = T)
myzipfile[1]


R.utils::gunzip(myzipfile[1], remove = F)

myzipfile

for(i in myzipfile) {
  print(i)
}

for(i in myzipfile) {
  print(i)
  gunzip(i, remove = F)
}
