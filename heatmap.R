# heatmap
library(ggplot2)
library(reshape2)

nba = read.csv("http://datasets.flowingdata.com/ppg2008.csv", sep = ",")

normDf = function(df) {
  res = c()
  for(i in 1:ncol(df)) {
    vec = df[, i]
    newVec = rep(0, length(vec))
    maxVec = max(vec)
    minVec = min(vec)
    for(j in 1:length(vec)) {
      newVec[j] = (vec[j] - minVec)/(maxVec - minVec)
    }
    res = cbind(res, newVec)
  }
  res = data.frame(res)
  colnames(res) = colnames(df)
  return(res)
}

nba2 = normDf(nba[, 2:ncol(nba)])

View(nba2)

nba2$Name = nba$Name

resNba = melt(nba2, id.vars = 'Name', measure.vars = colnames(nba)[-1])
View(resNba)

ggplot(resNba, aes(x = resNba$variable, y = resNba$Name)) +
  geom_tile(aes(fill = value)) +
  scale_fill_gradient(low = 'white', high = 'steelblue') +
  xlab('') +
  ylab('') +
  scale_x_discrete(expand = c(0, 0)) +
  theme(axis.text.x = element_text(angle = 330), axis.ticks = element_blank(),
        legend.position = 'none')


