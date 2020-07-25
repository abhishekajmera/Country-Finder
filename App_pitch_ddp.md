<style>
body {

   background-image: url("https://cdn.suwalls.com/wallpapers/digital-art/minimalistic-map-of-the-world-54583-1920x1080.jpg");
   a:link{
   color:white
   };
   
}
</style>

========================================================
author: 
date: 
autosize: true

# Location Finder
<br>
<br>
<br>
## - Abhishek Ajmera
###    DDP Course project



========================================================

 <h1><span style=" color:white;">  About:</h1> 


 <span style=" color:white;"> - This project takes coordinates (latitude, longitude) as inputs and shows the location on the map and displays the country to which it belongs.
<br>
<br>

<span style=" color:white;"> - It makes use of the Leaflet package in R to plot the map and add the coordinates as the marker.
<br>
<br>
<span style=" color:white;"> - Leaflet is one of the most popular open-source JavaScript libraries for interactive maps. The user can scroll and navigate through the map dispayed.

</span>


========================================================

<span style=" color:white;"> - The sidebar contains the inputs: Latitude value, latitude decimal,longitude value, longitude decimal via a slider input.

<span style=" color:white;"> - The 'value' part of the coordinates denotes the numbers before the decimal and the 'decimal' value contains the numbers after the deecimal. 


<span style=" color:white;"> - Therefore, latitude value of 45 and latitude decimal of 12 will result in the latitude corordinate to be 45.12


<span style=" color:white;"> - This project uses the decimal degrees system (DDD.DDDDD). The coordinates are stored internally in a floating point data type.


<span style=" color:white;"> - Once the 'Find Location' button is pressesd, a reactive event is set to add the marker to the map and find the country to which it belongs to.




========================================================
<h1><span style=" color:white;"> Getting the Country</h1>

```r
library(sp)
library(maps)
library(rgeos)
library(maptools)
library(rworldmap)
```


```r
points=data.frame(lon=-1.2,lat=49.20)
countriesSP <- getMap(resolution='low')
pointsSP = SpatialPoints(points, proj4string=CRS(proj4string(countriesSP)))  
indices = over(pointsSP, countriesSP)
indices$ADMIN  
```

```
[1] France
244 Levels: Afghanistan Aland Albania Algeria American Samoa Andorra ... Zimbabwe
```


========================================================

 <h1><span style=" color:white;">  Links:</h1> 
  <br>
<span style=" color:white;"> - Github:

<span style=" color:white;">https://github.com/abhishekajmera/Country-Finder
  <br>
  <br>
  <br>
<span style=" color:white;"> - Shiny App: 

<span style=" color:white;">https://abhishekajmera0903.shinyapps.io/CountryFinder/

        
        
        
        
        
        
        
        
        
        
        
        
        
