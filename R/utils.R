
#' Pipe operator
#'
#' @name %>%
#' @rdname pipe
#' @keywords internal
#' @importFrom magrittr %>%
#' @usage lhs \%>\% rhs
#' @export
NULL

#' Compound_pipe
#'
#' @name %<>%
#' @rdname compound_pipe
#' @keywords internal
#' @importFrom magrittr %<>%
#' @usage lhs \%<>\% rhs
#' @export
NULL

#' exit R without saving
#' exit R without saving workspace.
#' @details This just calls \code{q("no")}
#' @export
exit <- function() q("no")



