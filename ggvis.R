install.packages(c("ggvis","dplyr"))
library(dplyr)
library(ggvis)

mtcars %>%
    ggvis(~mpg, ~wt,
    fill = input_radiobuttons(label = "Choose fill variable:", 
    choices = c("vs","carb"), map = as.name)) %>%
    layer_points() %>%
    layer_smooths()


mtcars %>% 
    ggvis(~mpg) %>% 
    layer_histograms(width = input_numeric(2))

mtcars %>% 
    ggvis(~mpg) %>% 
    layer_histograms(width = input_slider(1,20, label="Choose a binwidth:"))

# Map the binwidth to a slider bar ("Choose a binwidth:") with the correct specifications

mtcars %>% 
    ggvis(~mpg, ~vs, strokeOpacity := 0.5, strokeWidth := 5, stroke := "skyblue") %>% 
    layer_model_predictions(model="glm") %>%
    layer_points(fill = ~carb, 
                 shape := "triangle-up", size := 100)

pressure %>% 
    ggvis(~temperature, ~pressure, stroke := "darkred") %>% 
    layer_lines(stroke := "orange", strokeDash := 5, strokeWidth := 5) %>% 
    layer_points(shape := "circle", size := 100, fill := "lightgreen") %>%
    layer_smooths()

faithful %>% 
    ggvis(~waiting, ~eruptions, opacity := 0.6, 
          fill = ~factor(round(eruptions))) %>%
    add_legend("fill", title = "~ duration (m)", orient = "left") %>%
    layer_points()

faithful %>% 
    ggvis(~waiting, ~eruptions, opacity := 0.6, 
          fill = ~factor(round(eruptions)), shape = ~factor(round(eruptions)), 
          size = ~round(eruptions))  %>%
    add_legend(c("fill", "shape", "size"), title = "~duration (m)", value = c(2,3,4,5)) %>%
    layer_points()

iris %>%
    group_by(Species) %>%
    ggvis(~Sepal.Width, ~Sepal.Length, fill = ~Species, stroke = ~Species) %>%
    layer_points() %>%
    layer_smooths()

mtcars %>% ggvis(x = ~wt, y = ~mpg, fill = ~factor(cyl), opacity = ~hp) %>%
    layer_points() %>%
    scale_numeric("opacity", range = c(0.2,2))
