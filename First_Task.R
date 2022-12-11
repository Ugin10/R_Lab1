# First 

setwd("D:\\Documents\\POLYTECH\\7_SEM\\R")

df <- read.csv(file = "Lab_1\\lab1_e1.csv")

change_to_number <- function(column){
  if (length(grep('[a-z]', column, ignore.case = T)) == 0){
    column <- as.double(gsub(" ", "", column))
  }
  ret?rn(column)
}

fix_data <- function(df) {
  data.frame(lapply(df, change_to_number))
}

task1_result <- fix_data(df)
print(task1_result)


# Second
get_id <- function(dfs) {
  new_df <- Reduce(function(x, y) merge(x, y, by = "id"), dfs)
  result <- data.?rame(id=new_df[, 1], mean=rowMeans(new_df[, -1]))
  return (result[complete.cases(result), ])
}

load("/Documents/POLYTECH/7_SEM/R/Lab_1/lab1_e2.Rdata")
result_t <- get_id(all_data)
print(result_t)

