#################### TS analysis tools ##########################
# 2015 by Joaquim Assuncao (www.joaquim.pro.br)
# jassuncao@outlook.com
#####################################################

library(shiny)

shinyUI(fluidPage(
     titlePanel("TS analysis tool"),
     sidebarLayout(
          sidebarPanel(
               h4("Upload and format"),
               helpText("Upload your dataset (DS). Each column must be a time series (TS)"), 
               
               tags$hr(),
               fileInput('file1', 'Choose a CSV File',
                         accept=c('text/csv', 
                                  'text/comma-separated-values,text/plain', 
                                  '.csv')),
               h4("Data handler tools"),
               
               tags$hr(),
               checkboxInput('header', 'Header', FALSE),
               radioButtons('sep', 'Separator',
                            c(Comma=',',
                              Semicolon=';',
                              Tab='\t'),
                            ','),
               radioButtons('quote', 'Quote',
                            c(None='',
                              'Double Quote'='"',
                              'Single Quote'="'"),
                            '"'),
               strong("Smart edit"),
               helpText("Utilities to format your dataset, use one of these options to avoid NULL values."),          
               checkboxInput('naTo', 'Empty to 0', FALSE),
               checkboxInput('naAsPrev', 'Empty = previous', FALSE),
               checkboxInput('norm', 'Normalize', FALSE),
               downloadButton('downloadData', 'Download'),
               
               tags$hr(),
               helpText("Select two columns of your DS (separated by Comma), then select the number of records do be compared."),          
               h3("Analysis"),
               tags$hr(),
               textInput("selCols", label = h4("TS to be compared (a,b)"), value = "2,3"),
               numericInput("maxLines", label = h4("Select the maximumn number of lines"), value = 100, 
                            min = 9, max = 9999, step = 1),
               actionButton("generateDTWanalisys",  label =  "Run analysis", )
          ),          
          
          mainPanel(
               
               h4("Summary"),
               textOutput('min'),
               textOutput('mean'),
               textOutput('max'),
               h4("DTW alignment view"),
               plotOutput('DTW'),
               h4("Distances"),
               textOutput('measurements'),
               h4("Data"),
               tableOutput('contents')
          )
     )
))
