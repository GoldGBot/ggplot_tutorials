library(ggplot2)

subDiamond = diamonds[sample(nrow(diamonds), 5000), ]

# title  
# axis
# theme
## line
## rect
## text
## blank
# default themes

ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = cut)) +
  labs(title = 'carat-price') +
  scale_y_continuous(limits = c(0, 20000)) +
  scale_x_continuous(breaks = seq(0, 3, .5)) +
  theme(axis.line = element_line(color = 'red'),
        legend.key = element_rect(fill = 'transparent'),
        text = element_text(color = 'blue'),
        panel.background = element_blank(),
        plot.title = element_text(hjust = .5))
  
ggplot(subDiamond, aes(x = carat, y = price)) +
  geom_point(aes(color = cut)) +
  theme_bw()


