#include <Rcpp.h>
using namespace Rcpp;

//' @title removeNA
//' @description Remove NA from string or vector.
//' @param a A vector of numerfic values.
//' @export
// [[Rcpp::export]]
NumericVector removeNA(NumericVector a)
{
    int vectorLength = a.size();
    NumericVector result(vectorLength);
    for (int i = 0; i < vectorLength ; i++)
    {
        if (NumericVector::is_na(a[i]))
        {
            result[i] = 0;
        }
        else
        {
            result[i] = a[i];
        }	
    }
    return result;
}