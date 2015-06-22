colors <- c('green','red','blue')

fluidPage(
  
  titlePanel("Normal distribution plotter"),
  
  sidebarPanel(

    sliderInput('sd', 'Standard deviation', min=0.3, 10
               , value=1, step=0.1),

    selectInput('color', 'Color', colors)
  ),
  
  mainPanel(
    plotOutput('plot')
  )
)