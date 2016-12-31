library(shiny)
library(shinydashboard)

source('standalone-functions.R')

shinyServer(function(input, output) {
  
  processed_data <- eventReactive(input$process, {
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    this_password <- NULL
    if (input$password_present) this_password <- input$password
    
    extracted <- extract_tables_custom(inFile$datapath, this_password)
    
    process_data(extracted)
  })
  
  output$mf_selector <- renderUI({
    if (is.null(processed_data())) return(NULL)
    
    selectInput(inputId = 'mf_selected',
                label = 'Select a mutual fund',
                choices = names(processed_data()),
                multiple = FALSE)
  })
  
  output$contents <- renderDataTable({
    if (is.null(processed_data())) return(NULL)
   
    processed_data()[[input$mf_selected]]$purchase_data
  })
  
})
