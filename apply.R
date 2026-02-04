#Apply Family 
lst <- list(a = 1:5, b = 6:10)

lapply(lst, sqrt)
sapply(lst, sqrt)


#DataFarme
df=data.frame(
  "employeeid"=c(123,124,125,126),
  "employeename"=c("sameer","sagar","satish","sana"),
  "salary"=c(45000,65000,55000,89000),
  "department"=c("sales","HR","Hr","sales")
)
df


#all Employees
x=lapply(df["employeename"],print)


#Employee with Department "Sales"
z=lapply(df[df$department=="sales",],print)
a=apply(df[df["department"]=="sales",],1,print)


#Total Salary By Departments
c=tapply(df$salary,df$department,sum)
c


#Max Salary By Departments
d=tapply(df$salary,df$department,max)
d


#Annual salary of employee
e=tapply(df$salary,df$employeename,function(x) x*12)
e

