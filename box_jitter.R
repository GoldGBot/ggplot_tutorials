# iris

ggplot(iris, aes(x = '', y = iris$Sepal.Length)) +
  geom_boxplot()

# diamonds

ggplot(diamonds, aes(x = cut, y = price)) +
  geom_boxplot(fill = 'cornflowerblue', width = .3, outlier.color = 'red') +
  geom_point()

# notch, width, outliers

# violin

ggplot(diamonds, aes(x = cut, y = price)) +
  geom_violin(adjust = 2) +  # adjust
  geom_boxplot(width = .2)

# sample, sampling

dim(iris)

s1 = iris[sample(nrow(iris), 30), ]

table(s1$Species)

library(sampling)

ind = strata(data = iris, stratanames = c('Species'), method = 'srswor',
             size = c(10, 10, 10))

ind

s2 = getdata(iris, ind)[, 1:5]

d2 = diamonds[sample(nrow(diamonds), 2000), ]

ggplot(d2, aes(x = cut, y = price)) +
  geom_boxplot() +
  geom_jitter(width = .2, alpha = 1/3, color = 'lightblue') +
  geom_rug(alpha = 1/3)





