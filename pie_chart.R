# pie chart

df = data.frame(value = c(rep('A', 20), rep('B', 40), rep('C', 70)))

ggplot(df, aes(x = value)) +
  geom_bar(aes(fill = value)) +
  coord_polar(theta = 'y')

ggplot(df, aes(x = factor(1))) +
  geom_bar(aes(fill = value), width = 1) +
  coord_polar(theta = 'y')