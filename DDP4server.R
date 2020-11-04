
#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(
    function(input, output){
        output$IAV <- renderText({ calculateIAVv(input$price, input$Yearop, input$Interest ,input$code) })
        output$TOTALGAIN <- renderText({calculateTOTALGAINn(input$price, input$Yearop, input$Interest ,input$code)})
        
    }
)

calculateIAVv <- function (price, Yearop, Interest, code) 
{
    result <-  code * 0.25 * (price * ((1+Interest/100)**(2020-Yearop)))
    return(round(result, digits = 2))
}

calculateTOTALGAINn <- function(price, Yearop, Interest, code)
{
    result <- (code * 0.25 * (price * ((1+Interest/100)**(2020-Yearop))))-price
    return(round(result, digits = 2))
}



