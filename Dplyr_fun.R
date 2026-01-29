df =data.frame(
  "customerid"= c(1,2,3,4,5,6),
	"first_name"=c("Amit", "Ravi", "Neha", "Priya", "Karan","Sonal"),
	"last_name"=c("Patil","Ghodke","Bargude","Kadam","Pawar","kale"),
	"amount"=sample(2000:6000,6),
	"gender"=c("Male","Male","Female","Female","Male","Female"),
	"date"=as.Date(c("2025-01-01","2025-01-02","2025-01-03",
	                 "2025-01-04","2025-01-05","2025-01-06"))

)
df$first_name

library(dplyr)

#Display Customer firstname, lastname and amount
dplyr::select(df,first_name,last_name,amount)
df %>% select(first_name,last_name,amount)

#Display Customerid, firstname and date of shopping 
df %>% select(customerid,first_name,date)

#Display customer details without gender column
df %>% select(-gender)

#Add fullname column
df$Fullname =paste(df$first_name,df$last_name)
df

#Calculate total amount Column(2% GST on Existing amount column) 
df$Total_Amount = (df$amount*0.02)+df$amount
df %>% select(Fullname,amount,Total_Amount)

#Display all the customer whose amount is greater than Rs5000
df %>% filter(Total_Amount > 5000)

#Display all the customer whose gender is male  amount is greater than Rs500
df %>% filter(gender == "Male", Total_Amount > 5000)

#Display all the customer whose date is between 2025-01-02 to 2025-01-05
summary(df$date)
df %>% filter(date >= as.Date("2025-01-02") & date <= as.Date("2025-01-05"))

#