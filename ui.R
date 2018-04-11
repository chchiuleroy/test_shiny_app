library(shiny)
#source('lottery_test.R')
A = read.csv("A.csv", header = T, sep = ",")
B = read.csv("B.csv", header = T, sep = ",")
C = read.csv("C.csv", header = T, sep = ",")
D = read.csv("D.csv", header = T, sep = ",")
E = read.csv("E.csv", header = T, sep = ",")

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