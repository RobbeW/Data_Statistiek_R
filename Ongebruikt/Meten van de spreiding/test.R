library(ggplot2)
library(ggforce)
library(ggforce)
library(gghalves)

clay_loam <- c(0.41, 0.41, 0.41, 0.41, 0.43, 0.43, 0.43, 0.48 ,0.48 ,0.58 ,0.79 ,0.79 ,0.81 ,0.81 ,0.81 ,0.91 ,0.94 ,0.94, 1.02 ,1.04, 1.04, 1.17, 1.17, 0.17, 1.17, 1.17,
1.17, 1.17, 1.19, 1.19, 1.27, 1.4, 1.4, 1.59, 1.59, 1.6, 1.68, 1.91, 1.96, 1.96, 1.96, 2.1, 2.21, 2.31, 2.46, 2.49, 2.57, 2.74, 3.1, 3.18, 3.3, 3.58, 3.58,
4.15, 4.75, 5.33, 7.65, 7.7, 8.13, 10.41, 13.44)

silty_clay_loam <- c(0.9, 2.13, 2.34, 2.8, 3.48, 3.56)

ggplot(clay_loam)
geom_rain(data = clay_loam)

data(sepal)
?iris


g1 <- ggplot(iris, aes(Species, Sepal.Width)) + 
  geom_violin(fill = "grey90") + 
  geom_boxplot(width = .2, outlier.shape = NA, coef = 0)


g1 + geom_point(alpha = .7, width = .1, position = position_jitter(seed = 1))



g1 + ggforce::geom_sina(method = "counts", alpha = .5)

install.packages('ggbeeswarm')