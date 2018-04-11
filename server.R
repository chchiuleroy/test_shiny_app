library(shiny)

shinyServer(function(input, output) {
  output$table = DT::renderDataTable(DT::datatable({
    if(input$index == "大樂透") {data = A} else if(input$index == "今彩") {data = B} 
    else if (input$index == "大福彩") {data = C} else if (input$index == "威力彩") {data = D} else {data = E} 
  })) 
})
