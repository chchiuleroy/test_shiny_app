library(shiny); library(DT)
source("lottery.R")
ui = fluidPage(
  
  titlePanel("lottery information"),
  
  
  sidebarLayout(
    
    sidebarPanel(
      
      radioButtons("index", "lottery information:",
                   c("big-lottery", "today-lottery", "big-fu-lottery", "wili-lottery", "wili-special-lottery"))
      
      # br() element to introduce extra vertical spacing ----
      #br()
      
    ),
    
    fluidRow(
      DT::dataTableOutput("table")
    )
  )
)


server = function(input, output) {
  output$table = DT::renderDataTable(DT::datatable({
    if(input$index == "big-lottery") {data = A} else if(input$index == "today-lottery") {data = B} 
    else if (input$index == "big-fu-lottery") {data = C} else if (input$index == "wili-lottery") {data = D} else {data = E} 
  })) 
}

shinyApp(ui, server)