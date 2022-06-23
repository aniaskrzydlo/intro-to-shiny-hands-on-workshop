library(ggplot2)
source("utils.R")

variable_choices <- colnames(iris)[1:4]
names(variable_choices) <- create_label(variable_choices)
