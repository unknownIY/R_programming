library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)
library(readxl)
library(tidyr)

# Load data
df <- read_excel("real_estate_data.xlsx")
df <- separate(df, "State-City", into = c("State", "City"), sep = "-")
df$Total_price <- df$Size_sqft * df$Price_per_sqft

# ---- UI ----
ui <- fluidPage(
  titlePanel("🏠 Real Estate Market Trends Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("city", "Select City:", 
                  choices = c("All", sort(unique(df$City))), 
                  selected = "All"),
      selectInput("type", "Select Property Type:", 
                  choices = c("All", sort(unique(df$Type))), 
                  selected = "All")
    ),
    
    mainPanel(
      plotlyOutput("priceTrend"),
      plotlyOutput("cityBar"),
      plotlyOutput("scatterPlot")
    )
  )
)

# ---- SERVER ----
server <- function(input, output) {
  filteredData <- reactive({
    data <- df
    if (input$city != "All") data <- filter(data, City == input$city)
    if (input$type != "All") data <- filter(data, Type == input$type)
    data
  })
  
  # Line Chart: Price trend over months
  output$priceTrend <- renderPlotly({
    trend <- filteredData() %>%
      group_by(Month) %>%
      summarise(AvgPrice = mean(Price_per_sqft, na.rm = TRUE))
    
    ggplotly(
      ggplot(trend, aes(x = Month, y = AvgPrice, group = 1)) +
        geom_line(color = "steelblue", size = 1.2) +
        geom_point(size = 3, color = "darkblue") +
        labs(title = "Average Price per Sqft by Month", x = "Month", y = "Avg Price / Sqft") +
        theme_minimal()
    )
  })
  
  # Bar Chart: Average Price per City
  output$cityBar <- renderPlotly({
    avg_city <- filteredData() %>%
      group_by(City) %>%
      summarise(AvgPrice = mean(Price_per_sqft, na.rm = TRUE))
    
    ggplotly(
      ggplot(avg_city, aes(x = reorder(City, AvgPrice), y = AvgPrice, fill = City)) +
        geom_col() +
        coord_flip() +
        labs(title = "Average Price per Sqft by City", x = "City", y = "Avg Price / Sqft") +
        theme_minimal()
    )
  })
  
  # Scatter Plot: Size vs. Total Price
  output$scatterPlot <- renderPlotly({
    ggplotly(
      ggplot(filteredData(), aes(x = Size_sqft, y = Total_price, color = Type)) +
        geom_point(size = 3, alpha = 0.7) +
        labs(title = "Size vs Total Price", x = "Size (sqft)", y = "Total Price (₹)") +
        theme_minimal()
    )
  })
}

# ---- Run App ----
shinyApp(ui, server)
