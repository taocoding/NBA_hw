#' Average Age Function
#'
#' This function allows you to inquire the average age of NBA players in any certain year.
#' @keywords age
#' @param x The year you are inquiring. 
#' @export
#' @examples
#' avgage()


avgage <- function(x){
  avg <- filter(NBA, Year == x) %>% summarise(age = mean(Age))
  return(avg)
}