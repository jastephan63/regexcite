library(devtools)

use_git()


(x <- "alfa,bravo,charlie,delta")
#> [1] "alfa,bravo,charlie,delta"
strsplit(x, split = ",")
#> [[1]]
#> [1] "alfa"    "bravo"   "charlie" "delta"

str(strsplit(x, split = ","))
#> List of 1
#>  $ : chr [1:4] "alfa" "bravo" "charlie" "delta"

unlist(strsplit(x, split = ","))
#> [1] "alfa"    "bravo"   "charlie" "delta"

strsplit(x, split = ",")[[1]]
#> [1] "alfa"    "bravo"   "charlie" "delta"

strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}

use_r("strsplit1")
#> ☐ Edit 'R/strsplit1.R'.



load_all()
#> ℹ Loading regexcite

(x <- "alfa,bravo,charlie,delta")
#> [1] "alfa,bravo,charlie,delta"
strsplit1(x, split = ",")
#> [1] "alfa"    "bravo"   "charlie" "delta"

exists("strsplit1", where = globalenv(), inherits = FALSE)
#> [1] FALSE

