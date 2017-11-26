install.packages('ggplot2')

library(ggplot2)

# iris 

plot(iris$Sepal.Length, iris$Sepal.Width)

# qplot()

ggplot(data = iris, aes(x = iris$Sepal.Length, y = iris$Sepal.Width)) + 
  geom_point(color = 'blue') + 
  geom_smooth(method = 'loess')

# 'lightblue', 'pink', 'orange'

# color(border color), fill, shape, size, stroke 

ggplot(data = iris, aes(x = iris$Sepal.Length, y = iris$Sepal.Width)) + 
  geom_point(aes(color = iris$Species, shape = iris$Species))

# facet_wrap, facet_grid

ggplot(data = iris, aes(x = iris$Sepal.Length, y = iris$Sepal.Width)) + 
  geom_point() +
  facet_wrap(~ iris$Species, scale = 'free')  # scale

View(mtcars)

ggplot(data = mtcars, aes(x = mtcars$mpg, mtcars$disp)) + 
  geom_point() + 
  facet_grid(vs ~ gear)  # y ~ x

  

