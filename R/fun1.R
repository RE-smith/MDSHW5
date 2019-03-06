#' Most points scored in given year
#'
#' This function shows which player scored most points in the year input
#' @param x dataframe (stats2.csv)
#' @param y is a year in the dataframe
#' @keywords most points
#' @export
#' @examples
#'  fun1(stats2, 2000)

fun1 <- function(x, y){ ##Returns datapoint for first player in the dataframe for that year
  xyr <- dplyr::filter(x, Year == y)
  xyr2 <- dplyr::arrange(xyr, desc(PTS, Player))
  head(xyr2, 1)
}
