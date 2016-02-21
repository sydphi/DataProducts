library(shiny)


shinyUI(pageWithSidebar(  
        headerPanel("MTCars Evaluator"),  
        sidebarPanel(    
                #sliderInput('cyl', 'Select Cylinders',value = 4, min = 4, max = 8, step = 2), 
                sliderInput('qsec', 'Qtr Mile Time',value = c(14.50,22.9), min = 14.50, max = 22.9, step = 1), 
                sliderInput("hprange", "HP Range",min = 52, max = 335, value = c(52,335))
        ),
        mainPanel(    
                plotOutput('newHist'),
                tableOutput('values')
        )
))