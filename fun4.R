#' cor
#'
#' This function shows a corelation (cor) matrix between all numeric variables in the dataset for the given year
#' @param x dataframe (stats2.csv)
#' @param y is a year in the dataframe
#' @keywords corelation matrix
#' @export
#' @examples
#'  fun4(stats2, 2000)

fun4 <-function(x, y){ ##Returns non-visual cor
  pt1 <- dplyr::filter(x, Year == y)
  pt2 <- purrr::keep(pt1, is.numeric)
  pt3 <- cor(pt2, method = "s")

  head(pt3)
}
