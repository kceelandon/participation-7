library(shiny)
library(plotly)

select_values <- colnames(txhousing)

ui <- fluidPage(
  h1("Make a Plot!"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "x_var",
        label = "Select an X Variable",
        choices = select_values
      ),
      selectInput(
        "y_var",
        label = "Select a Y Variable",
        choices = select_values
      ),
      sliderInput(
        "size",
        label = "Select Size",
        min = 1,
        max = 50,
        value = 1
      ),
      selectInput(
        "color",
        label = "Select a Color",
        choices = c("green", "blue", "red", "black", "yellow", "orange")
      )
    ),
    mainPanel(
      plotlyOutput("scatter")
    )
  )
)


shinyUI(ui)