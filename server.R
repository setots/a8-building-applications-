# Install package
library(shiny)

# Use input to create a boxplot    
shinyServer(function(input, output) {
  
  # Render a boxplot of Iris data
  output$boxplot <- renderPlot({
    x <- as.numeric(input$var)
    boxplot(iris[,x],
            breaks = seq(0, max(iris[,x])),
            col = input$color, main = "Iris Data Boxplot",
            xlab = names(iris[x]))
  })
})