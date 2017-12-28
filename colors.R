# continuous
# scale_continuous()  scale_gradient()  scale_gradientn()
# scale_gradient2()
#
# discrete
# scale_discrete()  scale_hue()  scale_brewer()  
# scale_grey()  scale_manual()

subDiamond = diamonds[sample(nrow(diamonds), 5000), ]

# for continous variable

ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = table)) +
  scale_color_continuous(low = 'yellow', high = 'blue')

ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = table))
  scale_color_gradient(low = 'yellow', high = 'blue')

ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = table)) +
  scale_color_gradientn(colors = c('blue', 'white', 'red'))

# for discrete variable

ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = cut)) +
  scale_color_discrete(h = c(0, 200), c = 100, l = 30)  # hue, chroma, luminance

ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = cut)) +
  scale_color_brewer(palette = 2)

ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = cut)) +
  scale_color_grey(start = 0, end = .7)

ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = cut)) +
  scale_color_manual(values = c('red', 'lightblue', 'pink', 'green', 'maroon'))

