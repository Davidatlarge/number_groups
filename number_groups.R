number_groups <- function(values, # vector containing the grouping values
                          start_with = 1 # number of the first group
) {
  starts <- c(1,cumsum(rle(values)$lengths)+1)
  group <- cumsum(seq_along(values) %in% starts)+(start_with-1)
  return(group)
}
