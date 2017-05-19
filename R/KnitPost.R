#' @title Knit Rmd to Md
#' @description Knit an Rmd file to an Md that is suitable for a Jekyll blog.
#' @param fileName The Rmd file you would like to knit.
#' @param category The blog category where the post should be placed.
#' @import stats
#' @examples
#' 
#' \dontrun{
#' KnitPost("2017-05-18-test.Rmd")
#' }
#' @export


KnitPost <- function(fileName=NULL, category=NULL) {
    if(is.null(fileName)){print("Please enter file name of the new post.")}
    if(is.null(category)){"Please specify the category of the new post."}
    
    site.path=rmd.path=fig.dir=posts.path=cache.path=render_jekyll=opts_chunk=opts_chunk=NULL
    # Blog-specific directories.  This will depend on how you organize your blog.
    site.path <- "/Users/kriseberwein/Documents/keberwein.github.io/"
    rmd.path <- paste0(site.path, "_Rmd") # directory where your Rmd-files reside (relative to base)
    fig.dir <- "assets/Rfig/" # directory to save figures
    posts.path <- paste0(site.path, "_posts/", category, "/") # directory for converted markdown files
    cache.path <- paste0(site.path, "_cache/") # necessary for plots
    
    render_jekyll(highlight = "pygments")
    opts_knit$set(base.url = '/', base.dir = site.path)
    opts_chunk$set(fig.path=fig.dir, fig.width=8.5, fig.height=5.25, dev='svg', cache=F, 
                   warning=F, message=F, cache.path=cache.path, tidy=F)   
    
    setwd(rmd.path) # setwd to base
    
    knit(fileName, output = paste0("../_posts/blog/", sub(".Rmd$", "", basename(fileName)), ".md"), envir = parent.frame())
}

