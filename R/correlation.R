#' Correlation Function
#'
#' This function gives a correlation panel of all numerical data in a certain year, showing the correlations between. 
#' @keywords correlation
#' @param x The year you are inquiring. 
#' @export
#' @examples
#' correlation()


correlation <- function(x){
  nume <- filter(NBA, Year == x)
  filtered_continuous <- nume[,sapply(nume, is.numeric)]
  return(cor(filtered_continuous))
}