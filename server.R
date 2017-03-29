
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(leaflet)
shinyServer(function(input, output) {
  
  
  output$mymap <- leaflet::renderLeaflet(
    leaflet() %>%
      #addProviderTiles(providers$Esri.WorldImagery) %>%
      addProviderTiles(providers$Esri.WorldGrayCanvas) %>%
      #addPolygons(data = huc12, weight = 2, color = "#000000",
      #            fillColor = "transparent",
      #            popup = ~as.character(huc12@data$HUC12)) %>%
      addPolygons(data = catchments , weight = 0.5, color = "#000000",
                  fillColor = ~catchments$COLORS, fillOpacity = 0.5,
                  popup = ~as.character(catchments$FEATUREID))
  )
  
})
