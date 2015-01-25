library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Central limit theorem'),
  sidebarPanel(
    h3('Enter sample size and guess sd'),
    numericInput('n','Sample size, n', value = 20, min =10, max = 50),
    numericInput('sigma','Guess ensemble sd', value = 0.2, min = 0.1, max = 10)
    ),
  mainPanel(
    plotOutput('newHist'),
    h6('This app simulates the central limit theorem by generating the ensemble mean of 1000
       exponential samples with lambda = 0.2 (mean = 5). The size of each sample is set by the
       user as n, and the output simulates the mean and standard deviation of the ensemle mean.
       The user can also guess the esemble mean from the data. Hint: sigma/sqrt(n)!')
  )
))