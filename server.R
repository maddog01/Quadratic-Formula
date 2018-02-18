

library(shiny)

disc <-  function(a,b,c)(b^2 - 4*a*c)

x1c <- function(a,b,c){ (-b + sqrt(as.complex(b^2 - 4*a*c)))/(2*a)}
x2c <- function(a,b,c){ (-b - sqrt(as.complex(b^2 - 4*a*c)))/(2*a)}
x1r <- function(a,b,c) { (-b + sqrt(b^2 - 4*a*c))/(2*a)}
x2r <- function(a,b,c) { (-b - sqrt(b^2 - 4*a*c))/(2*a)}

shinyServer(function(input, output) {
        
        options(warn = -1)

        output$sol1 <- renderText({
                
                if(disc(input$a, input$b, input$c)==0){
                        x1r(input$a,  input$b,  input$c)
                        
                }else if (disc(input$a, input$b, input$c)>0){
                        x1r(input$a,  input$b,  input$c)
                        
                }else if (disc(input$a, input$b, input$c)<0){
                        x1c(input$a,  input$b,  input$c)
                }   
        }) 
        
        
        output$sol2 <- renderText({
                
                if(disc(input$a, input$b, input$c)==0){
                        x2r(input$a,  input$b,  input$c)
                        
                }else if (disc(input$a, input$b, input$c)>0){
                        x2r(input$a,  input$b,  input$c)     
                
                }else if (disc(input$a, input$b, input$c)<0){
                        x2c(input$a,  input$b,  input$c)
                }
                
        }) 
  
})
