Dept=data.frame(
  "deptid" =c(1,2,3),
  "deptname"=c("hr","sales","admin")
)
Employe = data.frame(
  "empId" = c(1,2,3,4),
  "empname"= c("Ravi", "Neha", "Priya", "Karan"),
  "salary"=sample(20000:60000,4),
  "deptid"=c(1,2,4,5)
)
Dept
Employe

#Display employees details with their department detail
emp_dept=Employe %>% inner_join(Dept)
emp_dept

#Display employees who is working in hr department
emp = Employe %>% left_join(Dept, by = "deptid") %>%
filter(deptname == "hr")
emp

#Display department wise sum in salary
sal =Employe %>% left_join(Dept, by ="deptid") %>%
  group_by(deptname) %>% summarise(total = sum(salary))
sal