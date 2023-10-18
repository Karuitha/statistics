## Load packages manager ---
if(!require(pacman)){
    install.packages("pacman")
}

## Load the library ----
pacman::p_load(tidyverse, rvest, janitor)

# Link to the data ----
adress <- "https://www.uvm.edu/~statdhtx/StatPages/More_Stuff/HtWeight.html"

## Download the DATA ----
## ENSSURE YOU HAVE INTERNET CONNECTION
heights <- read_html(adress) %>% 
    html_nodes("table") %>% 
    html_table() %>% 
    .[[1]] %>% 
    clean_names()

## View first six rows of the data ---
head(heights)
tail(heights)
glimpse(heights)

## Heights scatter plot ----
heights %>% 
    ggplot(mapping = aes(x = height, y = weight)) + 
    geom_point(size = 12, stroke = 6, color = "red") + 
    theme_bw() + 
    labs(x = "Height", y = "Weight", title = "Height vs Weight")

## Correlation analysis
heights %>% 
    slice(1:6) %>% 
    select(-gender) %>% 
    cor() %>% 
    corrplot::corrplot(method = "number", 
                       type = "lower")
    
