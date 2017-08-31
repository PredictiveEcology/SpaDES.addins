## be sure to update the 'Package Options' section of the package help file
##   in R/spades-addins-package.R
##
.onLoad <- function(libname, pkgname) {
  ## set options using the approach used by devtools
  opts <- options()
  opts.spades <- list( # nolint
    spades.loadpkgs = "~/GitHub/SpaDES.core"
  )
  toset <- !(names(opts.spades) %in% names(opts))
  if (any(toset)) options(opts.spades[toset])

  invisible()
}
