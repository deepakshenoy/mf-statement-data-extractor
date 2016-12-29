library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Extract data from the Consolidated Mutual fund statement"),
  
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Choose PDF File', accept = 'application/pdf'),
      checkboxInput('password_present', 'Password protected?', FALSE),
      conditionalPanel(
        condition = "input.password_present == true",
        passwordInput('password', 'Password', value = "")
      ),
      actionButton("process", "Process")
    ),
    
    mainPanel(
      uiOutput('mf_selector'),
      dataTableOutput('contents')
    )
  )
))
