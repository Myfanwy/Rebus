head(iris)
library(ggplot2)
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) # aesthetics 1) where do you want the data to go?
summary(myplot) # tells you where the data went

# shortcut functions: geom_point(), geom_bar(), geom_line()
myplot

myplot + geom_point()
myplot + geom_point(size = 3) #change point size

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size=3) # by adding color  = Species to the aesthetic, we generated a legend

#change the shape of the points by adding an aesthetic to the geometry
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size=3) 

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ] ## indexing for sampling rows from an entire dataframe, very cool
head(d2)

ggplot(d2, aes(carat, price, color = color)) + geom_point(size=3)

## Stats ##
library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
head(birthwt)

## Colors

aes(color = variable) # mapping
color = "black" # setting
scale_fill_manual(values = c("color1", "color2")) # scaling

library(RColorBrewer)
library(plyr)
library(reshape)
display.brewer.all()
df <- melt(iris, id.vars = "Species")
#using a colorbrewer palette
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette = "Set1")

#manual color scale:
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() +
  facet_grid(Species ~ .) + # multiple rows (Species), one column
  scale_color_manual(values = c("red", "green", "blue"))

## Adding a continuous scale to an axis
ggplot(birthwt, aes(factor(race), bwt)) +
  geom_boxplot(width = .2) +
  scale_y_continuous(labels = (paste0( 1:4, "Kg")),
breaks = seq(1000, 4000, by = 1000))
