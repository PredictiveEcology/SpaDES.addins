## Updated release

This version drops support for older R versions (< 4.0).
See `NEWS.md` for a full list of changes.

## Test environments

### Previous R versions
* Ubuntu 20.04                 (GitHub), R 4.0.5
* Ubuntu 20.04                 (GitHub), R 4.1.3
* Windows                      (GitHub), R 4.0.5
* Windows                      (GitHub), R 4.1.3
* Windows                 (win-builder), R 4.1.3

### Current R versions
* macOS 11.6 Big Sur           (GitHub), R 4.2.1
* macOS 11.6 Big Sur            (local), R 4.2.1
* macOs (m1) Big Sur             (rhub), R 4.2.1
* Ubuntu 20.04                 (GitHub), R 4.2.1
* Ubuntu 20.04                  (local), R 4.2.1
* Windows                      (GitHub), R 4.2.1
* Windows                       (local), R 4.2.1
* Windows                 (win-builder), R 4.2.1

### Development R version
* Ubuntu 20.04                 (GitHub), R-devel (2022-08-18 r82725)
* Ubuntu 20.04                  (local), R-devel (2022-08-18 r82725)
* Windows                      (GitHub), R-devel (2022-08-18 r82725 ucrt)
* Windows                 (win-builder), R-devel (2022-08-18 r82725 ucrt)

## R CMD check results

There were no ERRORs or WARNINGs

There was 1 NOTE:

1. There are multiple parts to this note:

    a. Some words were flagged as possibly mispelled, but they are false positives.
     
            Possibly mis-spelled words in DESCRIPTION: 
              addins (4:33)

## Downstream dependencies

We have run R CMD check on downstream dependencies, with no ERRORs nor WARNINGs.

See <https://github.com/PredictiveEcology/SpaDES.addins/blob/master/revdep/README.md>
