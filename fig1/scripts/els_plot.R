# Makes "arrows" plot with Elsgaard data for paper

source('../../functions/logaxis.R')

dat <- read.csv('../data/els.csv')
dat$t2 <- toupper(substr(dat$type, 1, 1))
dd <- na.omit(dat)
dc <- subset(dd, type == 'cattle')
di <- subset(dd, type == 'digestate')
d50 <- subset(dd, temp2 > 50)
d20 <- subset(dd, temp2 < 30)

tiff('../../fig_output/Fig1.tiff', width = 3.5, height = 3.2, pointsize = 12, units = 'in', res = 600)

  par(mar=c(4,5,1,2))
  #par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)

  plot(rate ~ temp2, log = 'y', type = 'n', yaxt = 'n', data = dd, 
       xlab = expression('Incubation temperature '*(degree*C)), 
       ylab = expression(CH[4]~'production rate'~(g~g[VS]^'-1'~h^'-1')),
       xlim = c(18, 55), 
       ylim = c(0.001, 0.1))
  text(dd$temp2, dd$rate, dd$t2)
  logaxis(2)
  arrows(dc$temp2[1] + 1.5, 0.93 * dc$rate[1], dc$temp2[2] - 1.5, 1.09 * dc$rate[2], col = 'red', length = 0.08, lwd = 2)
  arrows(d50$temp2[1], 1.21 * d50$rate[1], d50$temp2[2], 0.82 * d50$rate[2], col = 'blue', length = 0.08, lwd = 2)
  arrows(di$temp2[2] - 1.5, di$rate[2], di$temp2[1] + 1.5, 1.05 * di$rate[1], col = 'red', length = 0.08, lwd = 2)
  arrows(d20$temp2[1], 1.21 * d20$rate[1], d20$temp2[2], 0.82 * d20$rate[2], col = 'blue', length = 0.08, lwd = 2)
dev.off()

