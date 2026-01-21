amt = as.numeric(readline("Enter Amount : "))
day = readline("Enter DAY : ")

c=switch(tolower(day),
         "monday"=amt*0.045,  
         "tuesday"= amt*0.035,   
         "wednesday"=amt*0.07,   
         "thursday"= 0,    
         "friday"= amt*0.055,   
         "saturday"= amt*0.04,   
         "sunday"= amt*0.06,    
         0)
if(amt>5000){
  dec_amt = amt-c
    cat("amount after discount : ",dec_amt)
}else{
  print("NO discount applied")
}
        