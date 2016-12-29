library(shiny)

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
  
  
  output$contents <- renderTable({
    
    tmp <- processed_data()
    
    tmp[[1]]
  })
  
})
