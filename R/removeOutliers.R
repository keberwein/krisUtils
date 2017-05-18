#' @title Remove outliers
#' @description Remove outliers for the purpose of plotting
#' @param x A data frame
#' @param na.rm Logical: remove NA.
#' @examples
#' \dontrun{
#' foo <- removeOutliers(bar)
#' }
#' @export
#' 

# Function to remove outliers for ggploting
removeOutliers <- function(x, na.rm = TRUE) {
    qnt <- quantile(x, probs=c(.25, .75), na.rm = na.rm)
    H <- 1.58 * IQR(x, na.rm = na.rm)
    y <- x
    y[x < (qnt[1] - H)] <- NA
    y[x > (qnt[2] + H)] <- NA
    y
}