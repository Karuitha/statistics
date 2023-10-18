library(tidyverse)

data(mpg)


head(mpg)


mpg %>% 
    ggplot(mapping = aes(x = cty, y = hwy, 
                         size = cyl, 
                         col = manufacturer)) + 
    geom_point()


glimpse(mpg)


mpg %>%
    mutate(manufacturer = str_to_sentence(manufacturer)) %>% 
    mutate(manufacturer = fct_reorder(manufacturer, hwy, median)) %>% 
    ggplot(mapping = aes(x = manufacturer, y = hwy, fill = manufacturer)) + 
    geom_boxplot(show.legend = FALSE) + 
    geom_point(show.legend = FALSE, shape = ".") +
    coord_flip() + 
    artyfarty::theme_bain() + 
    labs(x = "",
         y = "Highway Fuel Consumption, KMs per Gallon",
         title = "Motor Vehicle Fuel Consumption by Model",
         caption = "Data Source: MPG Data in R\nJohn Karuitha, 2022")
    
