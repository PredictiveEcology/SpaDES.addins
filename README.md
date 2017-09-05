# SpaDES.addins

## Development tools for `SpaDES` and `SpaDES` modules

[![Build Status](https://travis-ci.org/PredictiveEcology/SpaDES.addins.svg?branch=master)](https://travis-ci.org/PredictiveEcology/SpaDES.addins)
[![Appveyor Build status](https://ci.appveyor.com/api/projects/status/2fxqhgk6miv2fytd/branch/master?svg=true)](https://ci.appveyor.com/project/achubaty/SpaDES-addins/branch/master)
[![Coverage Status](https://coveralls.io/repos/github/PredictiveEcology/SpaDES.addins/badge.svg?branch=master)](https://coveralls.io/github/PredictiveEcology/SpaDES.addins?branch=master)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/SpaDES.addins)](https://cran.r-project.org/package=SpaDES.addins)
[![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/SpaDES.addins)](https://cran.r-project.org/package=SpaDES.addins)

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

