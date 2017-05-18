#' @title Open a file
#' @description Open a file using \code{\link[base]{system}} and \code{open}.
#' @param file File name (character string)
#'
#' @examples
#' \dontrun{openFile("myplot.pdf")}
#' @export
#' 
openFile <- function(file) { system( paste("open", file) ) }
