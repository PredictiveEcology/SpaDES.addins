if (getRversion() >= "3.1.0") {
  utils::globalVariables(".")
}

#' RStudio addin to copy an existing module
#'
#' @importFrom miniUI gadgetTitleBar miniContentPanel miniPage
#' @importFrom shiny dialogViewer observeEvent reactive runGadget selectInput textInput stopApp
#' @importFrom SpaDES.core copyModule openModules
#' @author Alex Chubaty
#'
addin_copyModule <- function() { # nolint
  ## UI component of the shiny gadget
  ui <- miniPage(
    gadgetTitleBar("Copy an existing module"),
    miniContentPanel(
      textInput("fromName", "Module name:", width = "100%"),
      textInput("toName", "New module name:", width = "100%"),
      textInput("filePath", "Module directory path:",
                value = normalizePath(getOption("spades.modulePath"),
                                      winslash = "/", mustWork = FALSE),
                width = "100%")
    )
  )

  ## SERVER component of the shiny gadget
  server <- function(input, output, session) {
    observeEvent(input$done, {
      copyModule(from = input$fromName, to = input$toName, path = input$filePath)
      openModules(name = input$toName, path = input$filePath)
      stopApp()
    })
  }

  runGadget(ui, server, viewer = dialogViewer("Copy an existing SpaDES module"))
}

#' RStudio addin to create a new module
#'
#' @importFrom magrittr %>%
#' @importFrom miniUI gadgetTitleBar miniContentPanel miniPage
#' @importFrom shiny conditionalPanel dialogViewer observeEvent reactive runGadget
#' @importFrom shiny selectInput textInput stopApp
#' @importFrom SpaDES.core newModule
#' @importFrom stringi stri_trim
#' @author Alex Chubaty
#'
addin_newModule <- function() { #nolint
  ## UI component of the shiny gadget
  ui <- miniPage(
    gadgetTitleBar("Create a new module"),
    miniContentPanel(
      textInput("moduleName", "Module name:", width = "100%"),
      textInput("filePath", "Module directory path:",
                value = normalizePath(getOption("spades.modulePath"),
                                      winslash = "/", mustWork = FALSE),
                width = "100%"),
      selectInput("moduleType", "Module type:", list("child", "parent"), "child"),
      conditionalPanel(
        condition = "input.moduleType == 'parent'",
        textInput("childModules", "Child module names (comma separated):", width = "100%")
      )
    )
  )

  ## SERVER component of the shiny gadget
  server <- function(input, output, session) {
    children <- reactive({
      input$childModules %>%
        strsplit(., split = ",") %>%
        unlist() %>%
        stri_trim()
    })

    observeEvent(input$done, {
      newModule(name = input$moduleName, path = input$filePath,
                type = input$moduleType, children = children())
      stopApp()
    })
  }

  runGadget(ui, server, viewer = dialogViewer("Create new SpaDES module"))
}
