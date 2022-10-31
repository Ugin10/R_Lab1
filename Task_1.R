setwd("D:\\Documents\\POLYTECH\\7_SEM\\R")

df <- read.csv(file = "Lab_1\\lab1_e1.csv")

change_to_number <- function(column){
  if (length(grep('[a-z]', column, ignore.case = T)) == 0){
    column <- as.double(gsub(" ", "", column))
  }
  return(column)
}

fix_data <- function(df) {
  data.frame(lapply(df, change_to_number))
}

task1_result <- fix_data(df)
print(task1_result)

