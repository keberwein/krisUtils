#include <Rcpp.h>
using namespace Rcpp;

//' @title Cdataframe
//' @description Convert a vector (list) to a data frame.
//' @param x an R vector
//' @usage \dontrun{
//' list <- replicate(250, 1:100, simplify=FALSE)
//' df <- as.Cdataframe(list)
//' }
//' @export

// [[Rcpp::export]]
List Cdataframe(List x) {
    List returned_frame = clone(x);
    GenericVector sample_row = returned_frame(0);
    
    StringVector row_names(sample_row.length());
    for (int i = 0; i < sample_row.length(); ++i) {
        char name[5];
        sprintf(&(name[0]), "%d", i);
        row_names(i) = name;
    }
    returned_frame.attr("row.names") = row_names;
    
    StringVector col_names(returned_frame.length());
    for (int j = 0; j < returned_frame.length(); ++j) {
        char name[6];
        sprintf(&(name[0]), "X.%d", j);
        col_names(j) = name;
    }
    returned_frame.attr("names") = col_names;
    returned_frame.attr("class") = "data.frame";
    
    return returned_frame;
}
