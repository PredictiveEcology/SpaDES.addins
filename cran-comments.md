## New submission

This is a spin off of an existing CRAN package (`SpaDES`), which we have split due to growing package size.

Please note that package installation errors (and therefore package test errors) on R-oldrel are caused by failures in dependency package `DiagrammeR`, whose recent update (0.9.1) depends on `grDevices >= 3.4.0` (see https://cran.r-project.org/web/checks/check_results_DiagrammeR.html)
We have raised the issue with the package maintainer.

## Test environments

### Previous R versions
* Ubuntu 14.04        (travis-ci), R 3.3.3
* Windows              (appveyor), R 3.3.3
* Windows 7               (local), R 3.3.3

### Current R versions
* macOS Sierra         (local), R 3.4.1
* OS X El Capitan  (travis-ci), R 3.4.1
* Ubuntu 14.04     (travis-ci), R 3.4.1
* Ubuntu 16.04         (local), R 3.4.1
* Windows           (appveyor), R 3.4.1
* Windows        (win-builder), R 3.4.1
* Windows 7            (local), R 3.4.1

### Development R version
* Debian:testing  (rocker/drd), R 3.5.0 (2017-08-29 r73156)
* Ubuntu 14.04     (travis-ci), R 3.5.0 (2017-09-01 r73175)
* Ubuntu 16.04         (local), R 3.5.0 (2017-08-30 r73162)
* Windows           (appveyor), R 3.5.0 (2017-08-31 r73162)
* Windows        (win-builder), R 3.5.0 (2017-08-30 r73162)

## R CMD check results

There were no ERRORs or WARNINGs

There was 1 NOTE:

1. There are multiple parts to this note:

    a. This is a new package submission:
    
            Maintainer: 'Alex Chubaty <alexander.chubaty@canada.ca>'
            
            New submission

    b. Some words were flagged as possibly mispelled, but they are false positives.
     
            Possibly mis-spelled words in DESCRIPTION: 
              addins (4:32)

## Downstream dependencies

There are currently no downstream dependencies of this package.
However, as we submit further `SpaDES` spinoff packages, this package will become a dependency for the following packages:

- `SpaDES` (Imports)
