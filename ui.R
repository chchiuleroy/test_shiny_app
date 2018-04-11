library(shiny)
source('lottery_test.R')

# Define UI for random distribution application 
shinyUI(fluidPage(
  
  titlePanel("博彩資訊"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      radioButtons("index", "博彩選擇:",
                   c("大樂透", "今彩", "大福彩", "威力彩", "威力彩特別號"))
      
      # br() element to introduce extra vertical spacing ----
      #br()
      
    ),
    
    fluidRow(
      DT::dataTableOutput("table")
    )
   )
  )
)