
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    library(leaflet)
    library(dplyr)
    
    
    Lats <- eventReactive(input$button, {
        Lat11=input$Lat1
        Lat12=input$Lat2
        Lat11+(0.01*Lat12)
        
        
        
    })
    Longs <- eventReactive(input$button, {
        
        Long11=input$Long1
        Long12=input$Long2
        Long11+(Long12*0.01)
        
    })
    
    
    
    
    output$distPlot <- renderLeaflet({
        
        
        
        
        
        
        
        library(sp)
        library(maps)
        library(rgeos)
        library(maptools)
        
        
        library(rworldmap)
        
        # The single argument to this function, points, is a data.frame in which:
        #   - column 1 contains the longitude in degrees
        #   - column 2 contains the latitude in degrees
        
        leaflet() %>% addTiles() %>% addMarkers(lat = Lats(),lng = Longs())
        #\addProviderTiles(providers$Stamen.TonerLite,
        #options = providerTileOptions()
        #)
        
    })
    output$nText <- renderText({
        points=data.frame(lon=Longs(),lat=Lats())
        
        
        
        
        
        
            countriesSP <- getMap(resolution='low')
            #countriesSP <- getMap(resolution='high') #you could use high res map from rworldxtra if you were concerned about detail
            
            # convert our list of points to a SpatialPoints object
            
            # pointsSP = SpatialPoints(points, proj4string=CRS(" +proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0"))
            
            #setting CRS directly to that from rworldmap
            pointsSP = SpatialPoints(points, proj4string=CRS(proj4string(countriesSP)))  
            
            
            # use 'over' to get indices of the Polygons object containing each point 
            indices = over(pointsSP, countriesSP)
            
            # return the ADMIN names of each country
            p=indices$ADMIN  
            #indices$ISO3 # returns the ISO3 code 
            #indices$continent   # returns the continent (6 continent model)
            #indices$REGION   # returns the continent (7 continent model)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        if(is.na(p))
        {
            "Not a country"
        }
            else
            {
        as.character(p)
            }
        
    })       
    
})


