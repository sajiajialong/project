#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(ggplot2)
# setwd("C:/Users/sheng/OneDrive/CU Second Semester/Statistical Graphics/Final Project")
NYTS_2017_2018_Selected <- readRDS("NYTS_2017_2018_Selected.rds")


# Define server logic for random distribution application
shinyServer(function(input, output) {
    output$histogram <- renderPlot({
      data <- NYTS_2017_2018_Selected %>% 
        select('Q2','Q31',input$reasons) %>%
        na.omit()
      data %>% select('Q31','Q2') %>%
        group_by(Q31,Q2) %>% count() %>% ungroup() %>% 
        group_by(Q2) %>% 
        mutate(Percentage = n/sum(n)) %>%
        ggplot(aes(x=Q31, y=Percentage, fill=Q2)) +
        geom_col(position = 'dodge')
    })
})
