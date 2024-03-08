library(shiny)

# Define UI for application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("My Shiny App"),
  
  # Sidebar layout with input and output definitions
  sidebarLayout(
    sidebarPanel(
      # Input: Slider for the number of bins
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    # Main panel for displaying outputs
    mainPanel(
      # Output: Histogram
      plotOutput("hist")
    )
  )
))
