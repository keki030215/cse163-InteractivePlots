library(shiny)

ui <- fluidPage(
  titlePanel("Interactive Plots"),
  mainPanel(
    tabsetPanel(
      tabPanel("Figure 1", 
               includeHTML("graphs/Median AQI_correlation_plot.html")),
      tabPanel("Figure 2", 
               HTML("<br>"),
               HTML("<div style='font-size: 18px;'>
               Respiratory Disease Mortality Rate across different States Map</div>"),
               HTML("<br>"),
               includeHTML("graphs/Respiratory Disease Mortality_map_plot.html"),
               HTML("<div style='font-size: 12px; font-style: italic;'>
               Zoom out and drag for Alaska and Hawaii Stats</div>")),
      tabPanel("Figure 3",
               HTML("<br>"),
               HTML("<div style='font-size: 18px;'>
               Median Air Quality Index (AQI) across different States Map</div>"),
               HTML("<br>"),
               includeHTML("graphs/Median AQI_map_plot.html"),
               HTML("<div style='font-size: 12px; font-style: italic;'>
               Zoom out and drag for Alaska and Hawaii Stats</div>")),
      tabPanel("Figure 4", 
               includeHTML("graphs/Household Income_correlation_plot.html")),
      tabPanel("Figure 5", 
               HTML("<br>"),
               HTML("<div style='font-size: 18px;'>
               Household Income across different States Map</div>"),
               HTML("<br>"),
               includeHTML("graphs/Household Income_map_plot.html"),
               HTML("<div style='font-size: 12px; font-style: italic;'>
               Zoom out and drag for Alaska and Hawaii Stats</div>")),
      tabPanel("Figure 6", 
               includeHTML("graphs/Smoking Prevalence_correlation_plot.html")),
      tabPanel("Figure 7", 
               HTML("<br>"),
               HTML("<div style='font-size: 18px;'>
               Smoking Prevalence across different States Map</div>"),
               HTML("<br>"),
               includeHTML("graphs/Smoking Prevalence_map_plot.html"),
               HTML("<div style='font-size: 12px; font-style: italic;'>
               Zoom out and drag for Alaska and Hawaii Stats</div>")),
      tabPanel("Figure 8", 
               includeHTML("graphs/correlation_heatmap_plot.html"))
    )
  )
)


server <- function(input, output) {
}

shinyApp(ui, server)