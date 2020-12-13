<!-- badges: start -->
  [![Travis build status](https://travis-ci.com/SidGurajala/STAT302Project2.svg?branch=master)](https://travis-ci.com/SidGurajala/STAT302Project2)
  [![Codecov test coverage](https://codecov.io/gh/SidGurajala/STAT302Project2/branch/master/graph/badge.svg)](https://codecov.io/gh/SidGurajala/STAT302Project2?branch=master)
  <!-- badges: end -->


# INSTALLATION 

To download the STAT302Project2 use the code below
```{r}
#install.packages("devtools")
devtools::install_github("SidGurajala/STAT302Project2")
library(STAT302Project2)
```

# USE 

The vignette shows a tutorial on all functions supplied by the package for 
statistical calculation and prediction. You can see the vignette by using
the following code.

```{r}
#install.packages("devtools")
devtools::install_github("SidGurajala/STAT302Project2", build_vignette = TRUE,
                          build_opts = c())
#Use this to view the vignette in the STAT302Project2 help
help(package = "STAT302Project2", help_type = "html")
#Use this to view the vignette as a html file 
utils::browseVignettes(package = "STAT302Project2")
```
