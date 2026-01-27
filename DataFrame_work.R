df=data.frame(
  "Account_NO"=sample(100000:999999, 10),
  "Customer_Name"=c("Amit", "Ravi", "Neha", "Priya", "Karan","Sonal", "Rahul", "Pooja", "Anil", "Meena"),
  "Account_Type"=c("Savings", "Current", "Fixed", "Current", "Fixed", "Current","Savings", "Fixed","Savings","Savings"),
  "Branch_Name"=sample(c("Mumbai", "Delhi", "Chennai", "Bangalore"), 10, replace = TRUE),
  "Balance"=sample(2000:50000,10),
  "IFSC_Code"=paste0("SBI",sample(1000:9999,10))
)

#Add new column with c()
df <- rbind(df,c(456789,"Ankit","Current","Mumbai",3000,"SBI3245"))
df

#reconverting Data Type
df$Account_NO <- as.numeric(df$Account_NO)
df$Balance <- as.numeric(df$Balance)

#Add new column with data.frame()
df <- rbind(df,
           data.frame(
             Account_NO   = 476789,
             Customer_Name = "Aniket",
             Account_Type  = "Current",
             Branch_Name   = "Mumbai",
             Balance       = 6000,
             IFSC_Code     = "SBI3845",
             stringsAsFactors = FALSE
           )
)

summary(df)

#Add new column 
df$Transaction_id = paste0("TNX",sample(1000:6000,nrow(df)))
df

#Length Of df
nrow(df)

#delete record from df
df <- df[-5, ]
df <- df[-c(3,4), ]
df