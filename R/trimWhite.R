#' @title trimWhite
#' @description Trim leading or trailing whitespace from.
#' @param x A dataframe, matrix or vector.
#' @examples
#' 
#' \dontrun{
#' trimed_df <- trimWhite(df)
#' }
#' @export

trimWhite <- function (x) gsub('^\\s+|\\s+$', "")
