get_id <- function(dfs) {
  new_df <- Reduce(function(x, y) merge(x, y, by = "id"), dfs)
  result <- data.frame(id=new_df[, 1], mean=rowMeans(new_df[, -1]))
  return (result[complete.cases(result), ])
}

load("/Documents/POLYTECH/7_SEM/R/Lab_1/lab1_e2.Rdata")
get_id(all_data)
