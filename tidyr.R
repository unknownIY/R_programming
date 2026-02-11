storms <- data.frame(
  "storms" = c("Alberto", "Alex", "Ana", "Arlene", "Arthur"),
  "wind" = c(110, 45, 65, 40, 30),
  "Pressure" = c(1007, 1008, 1006, 1005, 1007),
  "date" = c("2001-08-12", "2002-07-02", "2000-07-11", "2004-06-21", "2001-06-13")
)

case <- data.frame(
  "country" = c("FR", "DE", "US"),
  "1995" = c(7000, 58000, 15000),
  "1996" = c(4000, 56000, 14000),
  "1997" = c(6000, 54000, 17000)
)

pollution <- data.frame(
  "city" = c("New York", "New York", "London", "London", "Beijing", "Beijing"),
  "pratical.size" = c("large", "small", "large", "small", "large", "small"),
  "amount" = c(23, 14, 28, 12, 110, 58)
)

install.packages("tidyr")
library(tidyr)

tidyr::gather(case,"Year","n",2:4)

years = tidyr::gather(case,"year","nval",2:4)
years

a <- tidyr::gather(pollution,"practical.size",amount)
a

strom1 = tidyr::separate(storms,col=date,into=c('year','month','day'),sep='-')
strom1

storms2 <- tidyr::separate(storms, col=date ,into= c("Year", "Month", "Date"), sep = "-")
storms2

data <- data.frame(
  "full_name" = c("Alice_Smith", "Bob_Jones", "Charlie_Brown")
)

data

data1 <- tidyr::separate(data,col=full_name,into=c("First_name","Last_name"),sep='_')
data1

u_data <- tidyr::unite(data1,full_name,First_name,Last_name,sep=' ')
u_data

data1 <- tidyr::unite(data1,Full_name,First_name, Last_name,sep=" ",remove=FALSE)
data1

tidyr::spread(pollution,"pratical.size",amount)



