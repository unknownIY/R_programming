
library(stringr)

email <- readline("Enter your email: ")

ans <- str_match(email, "(?i)[A-Za-z0-9]+@gmail\\.com$")

if (is.na(ans)) {
  print("Weak Email")
} else {
  print("Strong Email")
}
#if (str_match(email, "(?i)[A-Za-z0-9]+@gmail\\.com$")) {
#  print("Correct Email")
#}else{
#  print("Incorrect Email")
#}