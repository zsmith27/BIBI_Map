
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Chessie BIBI Catchments"),
  mainPanel(
    leaflet::leafletOutput("mymap", height = 1000, width = 1800)
  )
))
