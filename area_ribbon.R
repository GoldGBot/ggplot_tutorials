# geom_area

df = data.frame(year = rep(1901:1930, each = 3),
                class = factor(rep(c('A', 'B', 'C'), each = 1, length.out = 90)),
                value = rnorm(90, 100, 30))

View(df)

ggplot(df, aes(x = year, y = value)) +
  geom_area(aes(fill = class), position = 'fill')


# geom_ribbon

x = seq(1, 10, .1)
y = sin(x)
ymin = y - .1
ymax = y + .1

s = data.frame(x = x, y = y, ymin = ymin, ymax = ymax)

View(s)

ggplot(s, aes(x, y)) +
  geom_ribbon(aes(ymin = ymin, ymax = ymax), fill = 'lightgreen') +
  geom_line(color = 'black')


