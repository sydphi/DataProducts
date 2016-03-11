MTCars Evaluator
========================================================
author: S. Phillips
date: 
autosize: true


* App: https://sydphi.shinyapps.io/Courser_Data_Products_Project/
* Repo: https://github.com/sydphi/DataProducts/tree/master/project


How to Use the MTCars Evaluator
========================================================

Adjust the sliders on the left panel to select the QSEC and HP variables of cars to be evaluated.  As the sliders are adjusted, a boxplot on in the right panel will refresh to show gas mileage of car models in that range. 

<img src="MTCars Evaluator-figure/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

List of Cars 
========================================================
In addition, a list of cars will appear below the boxplot that fit within the values from the sliders.


```r
library(knitr)
kable(head(mtcars))
```



|                  |  mpg| cyl| disp|  hp| drat|    wt|  qsec| vs| am| gear| carb|
|:-----------------|----:|---:|----:|---:|----:|-----:|-----:|--:|--:|----:|----:|
|Mazda RX4         | 21.0|   6|  160| 110| 3.90| 2.620| 16.46|  0|  1|    4|    4|
|Mazda RX4 Wag     | 21.0|   6|  160| 110| 3.90| 2.875| 17.02|  0|  1|    4|    4|
|Datsun 710        | 22.8|   4|  108|  93| 3.85| 2.320| 18.61|  1|  1|    4|    1|
|Hornet 4 Drive    | 21.4|   6|  258| 110| 3.08| 3.215| 19.44|  1|  0|    3|    1|
|Hornet Sportabout | 18.7|   8|  360| 175| 3.15| 3.440| 17.02|  0|  0|    3|    2|
|Valiant           | 18.1|   6|  225| 105| 2.76| 3.460| 20.22|  1|  0|    3|    1|
About the MTCars Data
========================================================

## Motor Trend Car Road Test Data (MTCars)

The MTCars data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

source: R MTCars Documentation

MTCars Field Definitions
=======

A data frame with 32 observations on 11 variables.

* mpg  - Miles/(US) gallon
* cyl  - Number of cylinders
* disp - Displacement (cu.in.)
* hp   - Gross horsepower
* drat - Rear axle ratio
* wt   - Weight (1000 lbs)
* qsec - 1/4 mile time
* vs   - V/S
* am   - Transmission (0 = automatic, 1 = manual)
* gear - Number of forward gears
* carb - Number of carburetors

source: R MTCars Documentation
