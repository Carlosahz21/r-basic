library(plotly)
library(dash)
library(dashCoreComponents)
library(dashHtmlComponents)

#grafica usando plotly
fig <- plot_ly(
  labels = c("Eve", "Cain", "Seth", "Enos", "Noam", "Abel", "Awan", "Enoch", "Azura"),
  parents = c("", "Eve", "Eve", "Seth", "Seth", "Eve", "Eve", "Awan", "Eve"),
  values = c(10, 14, 12, 10, 2, 6, 6, 4, 4),
  type = 'sunburst'
)

#
app <- Dash$new()
app$layout(
  
  htmlH1("GRAFICAS CON DASH"),
  
  htmlDiv(
    list(
      dccGraph(figure=fig) 
    )
  )
)

app$run_server()
