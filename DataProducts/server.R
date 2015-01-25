library(shiny)
shinyServer(
  function(input,output){
    
    output$newHist <- renderPlot({
      set.seed(125)
      n <- input$n
      sd <- 5/n^0.5
      mns <- NULL
      for (i in 1:1000) mns <- c(mns, mean(rexp(n,0.2)))
      hist(mns, col = "Red", main = "Ensemble mean distribution", xlab ="Sample Mean")
      abline(v = 5, lwd = 2, col = "Blue")
      text(6,150, paste("sd = ", sd))
      x <- seq(1,10,0.1)
      curve(500*dnorm(x,5,input$sigma), add = TRUE, lwd =2, col = "Green")
      curve(500*dnorm(x,5,sd), add = TRUE, lwd =2, col = "Red")
    })
  }
  )