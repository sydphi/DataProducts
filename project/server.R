
data(mtcars)


shinyServer(  
        function(input, output) {    
                
                output$newHist <- renderPlot({      
                 
                        mtcars_filt <- subset(mtcars, 
                                              (hp >= input$hprange[1] & hp <= input$hprange[2]) 
                                              & (qsec >= input$qsec[1] & qsec <= input$qsec[2])
                                             )
                        if (length(mtcars_filt) > 0) {
                                boxplot(mpg~cyl,data=mtcars_filt, main="Car Milage Data", 
                                xlab="Number of Cylinders", ylab="Miles Per Gallon")
                        } 
                })      
                
                sliderValues <- reactive({ 
                        
                        subset(mtcars, 
                               (hp >= input$hprange[1] & hp <= input$hprange[2]) 
                               & (qsec >= input$qsec[1] & qsec <= input$qsec[2])
                        )
                        
                        
                }) 
                
                output$values <- renderTable({
                        sliderValues()
                })
        }
)

