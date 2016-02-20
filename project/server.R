#library(UsingR)
data(mtcars)
#mtcars_filt <- subset(mtcars, hp >= input$hprange[1] & hp <= input$hprange[2])


shinyServer(  
        function(input, output) {    
                
                
                output$newHist <- renderPlot({      
                 
                        mtcars_filt <- subset(mtcars, 
                                              (hp >= input$hprange[1] & hp <= input$hprange[2]) 
                                              & (qsec >= input$qsec[1] & qsec <= input$qsec[2])
                                             )
                        
                        boxplot(mpg~cyl,data=mtcars_filt, main="Car Milage Data", 
                                xlab="Number of Cylinders", ylab="Miles Per Gallon")
                        
                })      
                
                sliderValues <- reactive({ 
                        
                        subset(mtcars, 
                               (hp >= input$hprange[1] & hp <= input$hprange[2]) 
                               & (qsec >= input$qsec[1] & qsec <= input$qsec[2])
                        )
                        
                        # Compose data frame
                        # data.frame(
                        #         Name = c("Cylinders", 
                        #                  "HP Range Min",
                        #                  "HP Range Max"),
                        #         Value = as.character(c(input$cyl, 
                        #                                paste(input$hprange[1]),
                        #                                paste(input$hprange[2]))), 
                        #         stringsAsFactors=FALSE)
                }) 
                
                # Show the values using an HTML table
                output$values <- renderTable({
                        sliderValues()
                         
                })
                
                        
        }
)

