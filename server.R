function(input, output) {
  
  colors <- c('green','red','blue')
  mean   <- 0
  x      <- seq(mean-8, mean+8, length=100)
  
  output$plot <- renderPlot({
    sd   <- input$sd
    hx   <- dnorm(x, mean = mean, sd = sd, log = FALSE)
    main <- bquote(paste("Normal Distribution, ", mu, "=", .(mean),", ", sigma,"=", .(sd)))
    plot(x, hx, type="l", lty=1, lwd=2, xlab="x value",
                ylab = "Density", main=main, ylim=c(0, 0.5), col=input$color)
  }, height=700)
}