#' @title colMean
#' @description Find the mean of a numeric column.
#' @param df_col A dataframe column.
#' @param removeNA Logical. Sould NAs be removed? The defualt is TRUE.
#' @examples
#' 
#' \dontrun{
#' mean <- colMean(df$col)
#' }
#' @export


colMean <- function(df_col, removeNA = TRUE){
    #determine number of columns
    nc <- ncol(y)
    #Create an empty numeric vector to store mean of each column
    means <- numeric(nc)
    #Create for loop to go through columns
    for(i in 1:nc){
        means[i] <- mean(y[,i], narm = removeNA)
    }
    means
}