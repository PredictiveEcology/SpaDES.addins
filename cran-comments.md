## Resubmission

This release fixes compatibility with r-oldrel (now compatible with R 3.3.0).

## Test environments

### Previous R versions
* Ubuntu 14.04        (travis-ci), R 3.3.3
* Windows              (appveyor), R 3.3.3
* Windows 7               (local), R 3.3.3

### Current R versions
* macOS Sierra         (local), R 3.4.3
* OS X El Capitan  (travis-ci), R 3.4.3
* Ubuntu 14.04     (travis-ci), R 3.4.3
* Ubuntu 16.04         (local), R 3.4.3
* Windows           (appveyor), R 3.4.3
* Windows        (win-builder), R 3.4.3
* Windows 7            (local), R 3.4.3

### Development R version
* Ubuntu 14.04     (travis-ci), R 3.5.0 (2018-02-01 r74192)
* Ubuntu 16.04         (local), R 3.5.0 (2018-02-01 r74192)
* Windows           (appveyor), R 3.5.0 (2018-02-01 r74192)
* Windows        (win-builder), R 3.5.0 (2018-02-01 r74192)

## R CMD check results

There were no ERRORs or WARNINGs

There was 1 NOTE:

1. There are multiple parts to this note:

    a. Some words were flagged as possibly mispelled, but they are false positives.
     
            Possibly mis-spelled words in DESCRIPTION: 
              addins (4:33)

## Downstream dependencies

We have run R CMD check on downstream dependencies, with no ERRORs nor WARNINGs.

See https://github.com/PredictiveEcology/SpaDES.addins/blob/master/revdep/README.md
