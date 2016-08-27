#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

miles = 15000
price = 2.5

AnnualCost <- function(mpg) (miles/mpg)*price

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$mpg})
    output$prediction <- renderPrint({AnnualCost(input$mpg)})
  }
)
