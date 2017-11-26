# iris

ggplot(data = iris, aes(x = iris$Sepal.Length)) +
  geom_histogram(binwidth = .1, color = 'black', fill = 'lightblue')  # binwidth

ggplot(data = iris, aes(x = iris$Sepal.Length)) +
  geom_histogram(binwidth = .1, color = 'black', aes(fill = iris$Species),
                 position = 'dodge')  # binwidth

# facet_wrap

ggplot(data = iris, aes(x = iris$Sepal.Length)) +
  geom_histogram(binwidth = .1, color = 'black', aes(fill = iris$Species)) +
  facet_wrap(~ iris$Species)

# freqpoly

ggplot(data = iris, aes(x = iris$Sepal.Length)) +
  geom_freqpoly(aes(color = iris$Species))

# geom_bar

ggplot(data = iris, aes(x = iris$Species)) +
  geom_bar()

testData = data.frame(x = 1:3, y = 3:1)

View(testData)

# geom_col

ggplot(data = testData, aes(x = x, y = y)) + 
  geom_col()







