# Print money with dollar signs and commas

#' @title Print numeric as a dollar figure
#' @description Print money with dollar signs and commas
#' @param value Vector of non-negative numbers (will be rounded to integers)
#' @param currency.sym The BigMark you would like to use.
#' @param digits How many digits after the point sep.
#' @param decimal The mark you would like to use for the decimal point.
#' @param sep The thousands seperator you would like to use.
#' @return Character string with numbers written like \code{"$7,547,085"}.
#' @examples
#' \dontrun{
#' printMoney(999723285)
#' }
#' @export
#' 

printMoney <- function(value, currency.sym="$", digits=2, sep=",", decimal=".") {
    paste(
        currency.sym,
        formatC(value, format = "f", big.mark = sep, digits=digits, decimal.mark=decimal),
        sep=""
    )
}