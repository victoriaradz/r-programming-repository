# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

install.packages("devtools")
install.packages("roxygen2")
library(roxygen2)
library(devtools)

create("Friedman")

check("Friedman")
build("Friedman")

myfunction <- function(a){
  sum <- a / 10
  return(sum)
}
package.skeleton()
