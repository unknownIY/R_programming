
company_data <- read.csv("compant_sales_data.csv")
company_data
plot(company_data$Month_number,
     company_data$Total_profit,
     xlab = "Month number",
     ylab = "Total profit",
     type = "l",
     col = ("blue")
)


plot(company_data$Month_number, company_data$Facecream,
     type = "l",
     col = "blue",
     xlab = "Month number",
     ylab = "Sales units",
     main = "Monthly Sales by Product")

lines(company_data$Month_number, company_data$Facewash, col = "red")
lines(company_data$Month_number, company_data$Toothpaste, col = "green")
lines(company_data$Month_number, company_data$Bathingsoap, col = "purple")
lines(company_data$Month_number, company_data$Shampoo, col = "orange")
lines(company_data$Month_number, company_data$Moisturizer, col = "brown")


# Add a legend
legend("topright",
       legend = c("Facecream", "Facewash", "Toothpaste", "Bathingsoap", "Shampoo", "Moisturizer"),
       col = c("blue", "red", "green", "purple", "orange", "brown"),
       lty = 1)

grid(nx = NULL, ny = NULL, col = "gray", lty = "dotted")

plot(company_data$Month_number,
     company_data$Total_profit,
     xlab = "Month number",
     ylab = "Total profit",
     col = ("red"),
     type = "o",
    
)

plot(company_data$Month_number,company_data$Toothpast,
     type = "p",
     xlab = "month_number",
     ylab = "ToothPast Data",
     col = "blue",
)
lines(company_data$Month_number,company_data$Facecream,type = 'p',col='red')

legend("topright",
       legend = c("Toothpast","Facecream"),
       col= c('blue','red'),
       lty = 1)

plot(company_data$Month_number,company_data$Toothpast,
     type = "p",
     xlab = "month_number",
     ylab = "ToothPast Data",
     col = "blue",
     lty = 2,
     lwd = 2,
     pch = 19
)

