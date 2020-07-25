#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Location finder"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("Long1","Longitude value",-180,80,value=14),
            sliderInput("Long2","Longitude decimal",0,99,value=20),
            sliderInput("Lat1","Latitude value",-90,90,value=49),
            sliderInput("Lat2","Latitude decimal",0,99,value=20),
            actionButton("button", "Find location")
            
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            
            tags$div(
                leafletOutput("distPlot"),
                tags$br(),
                tags$br(),
                tags$h2("Country: "),
                tags$h2(textOutput("nText"))
                
                
                
            ),
            
        )
    )
))
