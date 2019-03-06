#' corrplot graphic
#'
#' This function shows a corrplot between all numeric variables in the dataset for the given year
#' @param x dataframe (stats2.csv)
#' @param y is a year in the dataframe
#' @keywords cor corrplot
#' @export
#' @examples
#'  fun3(stats2, 2000)

fun3 <-function(x, y){ ##Returns visual cor
  pt1 <- dplyr::filter(x, Year == y)
  pt2 <- purrr::keep(pt1, is.numeric)
  pt3 <- cor(pt2, method = "s")
  output <- corrplot::corrplot(pt3)
  head(output, 1)
}
