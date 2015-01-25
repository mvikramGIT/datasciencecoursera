library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Central limit theorem'),
  sidebarPanel(
    h3('Enter sample size and guess sd'),
    numericInput('n','Sample size, n', value = 20, min =10, max = 50),
    numericInput('sigma','Guess ensemble sd', value = 0.2, min = 0.1, max = 10)
    ),
  mainPanel(
    plotOutput('newHist')
  )
))