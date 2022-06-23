library(ggplot2)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    ggplot(iris, aes_string("Species", input$variable)) +
      geom_boxplot()
  })
}