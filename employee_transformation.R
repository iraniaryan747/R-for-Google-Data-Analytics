#adding values to build dataframe
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

#creating data frame
employee <- data.frame(id, name, job_title)

#using separate and unite function
employee1 <- separate(employee, name, into = c('first_name','last_name'), sep=' ')

employee1$fullname <- paste(employee1$first_name, employee1$last_name, sep = " ")

