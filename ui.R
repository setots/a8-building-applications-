library(shiny)
shinyUI(fluidPage(
  # Title
  titlePanel(title = h2("Iris Data Boxplot", align = 'center')),
  # Declared a sidebar layout
  sidebarLayout(
    
    # Sidebar elements
    sidebarPanel( 
      selectInput("var",
                  "Choose Iris Dataset",
                  choices = c ("Sepal.length" = 1,
                               "Sepal.width" = 2,
                               "Petal.length" = 3,
                               "Petal.width"= 4),
                  selected = 1),
      br(),
      
      radioButtons("color",
                   "Choose color",
                   choices = c("red",
                               "blue",
                               "gray",
                               "purple"),
                   selected = "lightblue")
    ),
    
    # Main Panel, makes a boxplot
    mainPanel("main panel", 
              plotOutput('boxplot')
    )
  )
)
)
