#' Quickly reload a package from source
#'
#' Simply a convenience wrapper around \code{devtools::loadall}, to be used for
#' binding an RStudio keyboard shortcut.
#' By default, this will load the \pkg{SpaDES.core} package from the path
#' \file{~/GitHub/SpaDES.core}.
#' This can be changed by setting the \code{spades.loadpkgs} option.
#'
#' @param path Path to the source package directory.
#'             Default: \code{getOption("spades.loadpkgs", "~/GitHub/SpaDES.core")}.
#'
#' @author Alex Chubaty
#' @importFrom devtools load_all
#'
addin_loadAll <- function(path = getOption("spades.loadpkgs", "~/GitHub/SpaDES.core")) { # nolint
  devtools::load_all(path)
}
