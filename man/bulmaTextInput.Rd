% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bulma-input.R
\name{bulmaTextInput}
\alias{bulmaTextInput}
\title{Add text input}
\usage{
bulmaTextInput(inputId, label = NULL, placeholder)
}
\arguments{
\item{inputId}{The input slot that will be used to access the value.}

\item{label}{Input label.}

\item{placeholder}{Input placeholder.}
}
\description{
Add text input.
}
\examples{
if(interactive()){
library(shiny)

shinyApp(
  ui = bulmaPage(
   bulmaTitle("Hello Bulma"),
   bulmaTextInput("txt", label = "Input text", placeholder = "Type here"),
   verbatimTextOutput("default")
  ),
  server = function(input, output) {
    output$default <- renderText({ input$txt })
  }
)
}
}
\author{
John Coene, \email{jcoenep@gmail.com}
}
