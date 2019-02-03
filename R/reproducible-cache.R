#' RStudio addin to clear recent cache entries
#'
#' @importFrom miniUI gadgetTitleBar miniContentPanel miniPage
#' @importFrom reproducible clearCache
#' @importFrom shiny dialogViewer observeEvent runGadget textInput stopApp
#' @author Alex Chubaty
#'
addin_clearCache <- function() { # nolint
  ## UI component of the shiny gadget
  ui <- miniPage(
    gadgetTitleBar("Clear recent cache entries"),
    miniContentPanel(
      textInput("cachePath", "Cache path:",
                value = normalizePath(getOption("spades.cachePath", "."),
                                      winslash = "/", mustWork = FALSE),
                width = "100%"),
      textInput("after", "After (default: Sys.time() - 60):",
                value = Sys.time() - 60,
                width = "100%")
    )
  )

  ## SERVER component of the shiny gadget
  server <- function(input, output, session) {
    observeEvent(input$done, {
      reproducible::clearCache(input$cachePath, after = input$after)
      stopApp()
    })
  }

  runGadget(ui, server, viewer = dialogViewer("Clear recent cache entries."))
}
