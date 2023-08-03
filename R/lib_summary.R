#' R Library Summary
#'
#'Provides brief summary of installed packages on local machine
#' @return a data.frame containing count of packages in each library
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function() {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <-  c("library", "n_packages")
  pkg_df
}
