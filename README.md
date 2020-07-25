# Country-Finder
DDP course project

Link:https://abhishekajmera0903.shinyapps.io/CountryFinder/


This project takes coordinates (latitude, longitude) as inputs and shows the location on the map and displays the country to which it belongs. 

It makes use of the Leaflet package in R to plot the map and add the coordinates as the marker. Leaflet is one of the most popular open-source JavaScript libraries for interactive maps. The user can scroll and navigate through the map dispayed.

The sidebar contains the inputs: Latitude value, latitude decimal,longitude value, longitude decimal via a slider input. The 'value' part of the coordinates denotes the numbers before the decimal and the 'decimal' value contains the numbers after the deecimal. Therefore, latitude value of 45 and latitude decimal of 12 will result in the latitude corordinate to be 45.12

Note : This project uses the decimal degrees system (DDD.DDDDD°). This is the format you'll find most computer based mapping systems displaying. The coordinates are stored internally in a floating point data type, and no additional work is required to print them as a floating point number.
The N-S and E-W designators are omitted. Positive values of latitude are north of the equator, negative values to the south.

Once the 'Find Location' button is pressesd, a reactive event is set to add the marker to the map and find the country to which it belongs to.



