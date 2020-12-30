#Setup
if(!require("ggrepel")) install.packages("ggrepel")
library(ggrepel)
# add text to graph
ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_point(size = 5, color = "#0099f9") + 
  geom_text_repel(label = rownames(mtcars),  size=3.5)
#add titles, subtitles, captions, & labels
ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_point(color = "#0099f9", size = 5) +
  geom_point(aes(size = qsec, color = cyl)) +
  labs(
    title = "Miles per Gallon vs. Horse Power",
    subtitle = "Color - Number of cylinders; Size - 1/4 mile time",
    caption = "Source: MTCars dataset"
  )
# add a theme
ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_point(color = "#0099f9", size = 5) +
  geom_point(aes(size = qsec, color = cyl)) +
  labs(
    title = "Miles per Gallon vs. Horse Power",
    subtitle = "Color - Number of cylinders; Size - 1/4 mile time",
    caption = "Source: MTCars dataset"
  ) + 
  theme(
    plot.title = element_text(color = "#0099f9", size = 20, face = "bold", hjust = 0.5),
    plot.subtitle = element_text(size = 13, face = "bold", hjust = 0.5),
    plot.caption = element_text(face = "italic", hjust = 0)
  )