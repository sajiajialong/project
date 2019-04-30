#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
                    
# Define UI for random distribution application
shinyUI(pageWithSidebar(

    # Application title
    headerPanel("Why have you used ecigarettes?"),

    # Sidebar with controls to select the random distribution type
    # and number of observations to generate. Note the use of the br()
    # element to introduce extra vertical spacing

    sidebarPanel(
        checkboxGroupInput(inputId="reasons", label="Select one or more",
                           c("Friend or family member used them" = "Q33B",
                          "To try to quit using other tobacco products, such as cigarettes" = "Q33C",
                          "They cost less than other tobacco products, such as cigarettes" = "Q33D",
                          "They are easier to get than other tobacco products, such as cigarettes" = "Q33E",
                          "Famous people on TV or in movies use them" = "Q33F",
                          "They are less harmful than other forms of tobacco, such as cigarettes" = "Q33G",
                          "They are available in flavors, such as mint, candy, fruit, or chocolate" = "Q33H",
                          "They can be used in areas where other tobacco products, such as cigarettes, are not allowed" = "Q33I",
                          "I used them for some other reason" = "Q33J"))
    ),


    # Show a tabset that includes a plot, summary, and table view
    # of the generated distribution
    mainPanel(
        # tabsetPanel(
        #     tabPanel("Plot", plotOutput("histogram")),
        #     tabPanel("Summary", verbatimTextOutput("summary")),
        #     tabPanel("Table", tableOutput("table"))
        # )
        plotOutput("histogram")
    )
))
