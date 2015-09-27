library(shiny)

shinyUI(fluidPage(
  titlePanel("StockHistory"),
  
  sidebarLayout
  (
    sidebarPanel
    (
      helpText("Enter a stock symbol and information about it
               will be gathered from yahoo finance."),
    
      textInput("symb", "Stock Symbol", "AMG"),
    
      dateRangeInput("dates", 
        "Date range",
        start = as.Date(Sys.Date()-30), 
        end = as.character(Sys.Date()))
    ),
    
    mainPanel(plotOutput("plot"))
  )
)
)