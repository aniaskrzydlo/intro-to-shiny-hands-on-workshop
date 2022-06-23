server <- function(input, output, session) {
  var_label_x <- reactive({
    names(variables_dict[variables_dict == input$variable_x])
  })
  
  var_label_y <- reactive({
    names(variables_dict[variables_dict == input$variable_y])
  })
  
  output$plot <- renderPlot({
    ggplot(mtcars, aes_string(input$variable_x, input$variable_y)) +
      geom_point(colour = "royalblue", alpha = 0.7, size = 4) +
      theme_classic() + 
      theme(axis.text = element_text(size = 15),
            axis.title = element_text(size = 20)) +
      xlab(var_label_x())+
      ylab(var_label_y())
  })
  
  output$title <- renderText({
    paste0(var_label_x(), " by ", var_label_x())
  })
}