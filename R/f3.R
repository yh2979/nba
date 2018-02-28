#'  the correlation matrix for all numeric variables in the data for that year.
#'  @param year
#'  @example 
#'  f3(2011)
#'  @export
f3 <- function(x){
  year_data <- dplyr::filter(nba, Year == x)
  num_data <- dplyr::select_if(year_data, is.numeric)
  comat <- cor(num_data)
  return(comat)
}