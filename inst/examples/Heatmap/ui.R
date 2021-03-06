
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ShinyHighCharts)

shinyUI(fluidPage(

  # Application title
  titlePanel("Highcharts Heatmap Example"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput('title', label="Chart Title", value="A Great Title"),
      sliderInput("mean",
                  "Mean",
                  min = 0,
                  max = 1,
                  value = 0,
                  step=0.1),
      sliderInput("sd",
                  "St Dev",
                  min = 0,
                  max = 1,
                  value = 1,
                  step=0.1),
      hr(),
      verbatimTextOutput('pointValue')
    ),

    # Show a plot of the generated distribution
    mainPanel( highchartsOutput("heatmap", height="450px", include=c("base", "heatmap", "exporting", "data", "map") )  )
  )
))
