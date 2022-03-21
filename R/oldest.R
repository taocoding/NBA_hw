#' Oldest Player Function
#'
#' This function allows you to inquire the age of the oldest NBA players in a certain year.
#' @keywords oldest
#' @param x The year you are inquiring. 
#' @export
#' @examples
#' oldest()

oldest <- function(x){
  old_men <- filter(NBA, Year == x) %>% select(Player) %>% arrange(Player)
  old_guy <- filter(old_men, row_number() == 1)
  return(old_guy)
}
