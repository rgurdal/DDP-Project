
library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("ANNUAL FUEL COST ESTIMATOR"),
    sidebarPanel(
      numericInput('mpg', 'MPG', 20, min = 1, max = 100, step = 1 ),

      submitButton('Submit')
    ),
    mainPanel(
      h3('Result'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      p('Based on 15,000 miles per year and a gas price of $2.50:'),
      h4('Estimated Annual Fuel Cost (USD$): '),
      verbatimTextOutput("prediction")
    )
  )
)
