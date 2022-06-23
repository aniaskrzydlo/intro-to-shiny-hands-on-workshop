library(ggplot2)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    ggplot(iris, aes_string("Species", input$variable)) +
      geom_boxplot(fill = "royalblue") +
      theme_classic() + 
      theme(axis.text = element_text(size = 15),
            axis.title = element_text(size = 20)) +
      ylab(gsub(".", " ", input$variable, fixed = TRUE))
  })
  
  output$title <- renderText({
    paste0(gsub(".", " ", input$variable, fixed = TRUE), " by Species")
  })
}