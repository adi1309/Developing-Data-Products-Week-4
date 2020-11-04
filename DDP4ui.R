
library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Inflation Adjustment: for The Year 2020"),
    sidebarPanel(
        h4('Property:'),
        numericInput('code','1.Immovable 2.Movable', 1),
        numericInput('price', 'Purchase Price INR', 100000), 
        br(),
        h4('YoP  and Rate :'),
        numericInput('Yearop', 'Year of Purchase: ', 2000),
        numericInput('Interest', 'Rate of Interest at YoP', 10),
       
    ),
    mainPanel(
        h4('Adjusted Value:'),
        textOutput("IAV"),
        h4('Total Gain:'),
        textOutput("TOTALGAIN"),
        br(),
        h4('Usage:'),
        helpText("This shiny app allows the user to calculate the Inflation adjusted rate for their Property Value. Use the preset value boxes to change variable values."),
        code("Inflation Adjusted Value"),
        helpText("Property Prices are determined by CPI's for the corresponding year. The app calculates the same Dynamically as the values are changed"),
        code("Year of Purchase and Interest Rate"),
        helpText("The YoP and Rate give essential information regarding the changing CPI values")
    )
))
