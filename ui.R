library(shiny)
library(shinydashboard)


dashboardPage(
  dashboardHeader(title = "Extract data from the Consolidated Mutual fund statement", titleWidth = 600),
  dashboardSidebar(disable = TRUE),
  dashboardBody(
    fluidRow(
      box(width = 3,
        fileInput('file1', 'Choose PDF File', accept = 'application/pdf'),
          checkboxInput('password_present', 'Password protected?', FALSE),
          conditionalPanel(
            condition = "input.password_present == true",
            passwordInput('password', 'Password', value = "")
          ),
        actionButton("process", "Process")
        ),
      box('Instructions', width = 9)
      ),
    fluidRow(downloadButton('download', label = "Download", class = NULL))
  )
)
