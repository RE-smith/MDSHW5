#' oldest player in given year
#'
#' This function shows which player is the oldest in the year input
#' @param x dataframe (stats2.csv)
#' @param y is a year in the dataframe
#' @keywords age
#' @export
#' @examples
#'  fun2(stats2, 2000)

fun2 <- function(x, y){ ##Returns oldest player in that year
  dfyr2 <- dplyr::filter(x, Year == y)
  dfyr3 <- dplyr::arrange(dfyr2, desc(Age))
  head(dfyr3, 1)
}
