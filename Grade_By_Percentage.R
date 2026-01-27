per=as.numeric(readline("enter your percentage:"))
if(per >= 75){
  grade ="Grade = A"
}else if (per >= 65){
  grade ="Grade = B"
}else if (per >= 55){
  grade ="Grade = C"
}else if (per >= 45){
  grade ="Grade = D"
}else if (per >= 35){
  grade ="Grade = E"
}else {
  grade ="Grade = F"
}

cat("The",grade)