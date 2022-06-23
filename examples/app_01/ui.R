ui <- fluidPage(
  selectInput("variable", "Variable", choices = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")),
  plotOutput("plot")
)