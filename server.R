library(shiny)
library(plotly)

server <- function(input, output) {
  output$scatter <- renderPlotly({
    x_data <- txhousing[[input$x_var]]
    y_data <- txhousing[[input$y_var]]
    
    p <- plot_ly(txhousing, x = x_data, y = y_data,
                 type = "scatter", width = 1000, height = 750, mode = "markers",
                 marker = list(color = input$color, size = input$size))
      
    p
  })
  
}

shinyServer(server)