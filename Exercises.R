install.packages('lubridate')

library(lubridate)

lubridate::month()
lubridate::date()
lubridate::today()


month(x = today(), label = T, abbr = T)


d <- '2011-12-12'
d2 <- ymd(d)
class(d)
class(d2)

month(d)
month(d2)

Sys.Date()
Sys.sleep()
