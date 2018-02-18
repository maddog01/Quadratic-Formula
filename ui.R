

library(shiny)

shinyUI(pageWithSidebar(
        
        headerPanel("Applying the quadratic formula to a quadratic in standard form"),
        sidebarPanel(
                
                h4(withMathJax("$$a*x^2 + b*x + c = 0$$")),
                numericInput("a", "a=", 1),
                numericInput("b", "b=", 0),
                numericInput("c", "c=", 0),
                submitButton('Submit')
        ),
        

        mainPanel(
                h4('Your solutions'),
                
                verbatimTextOutput("sol1"),
        
                verbatimTextOutput("sol2")
   
        )
))

  


