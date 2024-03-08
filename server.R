library(shiny)

# Define server logic
shinyServer(function(input, output) {
  
  # Generate a histogram based on input$bins from ui.R
  output$hist <- renderPlot({
    x <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
})
