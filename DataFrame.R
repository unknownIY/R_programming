df=data.frame(
  "StudentId" = c(1,2,3,4,5),
  "First_name" = c("Rohit","Ankit","Sanskar","Anish","Om"),
  "Last_name" = c("Patil","Ghodke","Bargude","Kadam","Pawar"),
  "IR" = c(80,70,65,72,58),
  "Python" = c(82,80,76,65,38),
  "Java" = c(79,72,66,81,63)
)
df
#full Name 
df$Full_name <- paste(df$First_name,df$Last_name)
df

#Total Marks
df$Total_marks <- df$IR+df$Python+df$Java
df

#Percentages
df$Percentage <- (df$Total_marks/300)*100
df

#Result (Every Subject Marks should be grater then 40 )
df$Result <- ifelse(df$IR >= 40 & df$Python >= 40 & df$Java >= 40,
                    "Pass", "Fail")
df


