# SpaDES.addins

## Development tools for `SpaDES` and `SpaDES` modules

<!-- badges: start -->
[![R build status](https://github.com/PredictiveEcology/SpaDES.addins/workflows/R-CMD-check/badge.svg)](https://github.com/PredictiveEcology/SpaDES.addins/actions)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/SpaDES.addins)](https://cran.r-project.org/package=SpaDES.addins)
[![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/SpaDES.addins)](https://cran.r-project.org/package=SpaDES.addins)
[![Codecov test coverage](https://codecov.io/gh/PredictiveEcology/SpaDES.addins/branch/master/graph/badge.svg)](https://codecov.io/gh/PredictiveEcology/SpaDES.addins?branch=master)
<!-- badges: end -->

Provides 'RStudio' addins for 'SpaDES' packages and 'SpaDES' module development.
See `?SpaDES.addins` or the package vignettes for an overview of the tools provided.

## Installation

The suggested package `fastshp` can be installed with:

```{r}
install.packages("fastshp", repos = "http://rforge.net", type = "source")
```

Building packages from source requires the appropriate development libraries for your operating system (*e.g.*, Windows users should install [Rtools](https://cran.r-project.org/bin/windows/Rtools/)).

### Current stable release

**Install from CRAN:**

```r
install.packages("SpaDES.addins")
```

**Install from GitHub:**
    
```r
#install.packages("devtools")
library("devtools")
install_github("PredictiveEcology/SpaDES.addins", dependencies = TRUE) # stable
```

### Development version (unstable)

**Install from GitHub:**

```r
#install.packages("devtools")
library("devtools")
install_github("PredictiveEcology/SpaDES.addins", ref = "development", dependencies = TRUE) # unstable
```
