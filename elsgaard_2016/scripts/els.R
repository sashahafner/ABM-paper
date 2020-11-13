# Makes "arrows" plot with Elsgaard data for paper

source('C:/Program Files/GitHub/mamemo/figures/elsgaard_2016/functions/logaxis.R')

dat <- read.csv('C:/Program Files/GitHub/mamemo/figures/elsgaard_2016/data/els.csv')
dat$t2 <- toupper(substr(dat$type, 1, 1))
dd <- na.omit(dat)
dc <- subset(dd, type == 'cattle')
di <- subset(dd, type == 'digestate')
d50 <- subset(dd, temp2 > 50)
d20 <- subset(dd, temp2 < 30)

#pdf('C:/Program Files/GitHub/mamemo/figures/elsgaard_2016/plots/els_arrows_log.pdf', height = 3.2, width = 3.5)
#png('../plots/els_arrows.png', height = 3.2, width = 3.5, units = 'in', res = 600, pointsize = 13)
svg(filename="Figure1_elsgaard.svg", 
    width=7, 
    height=3.5, 
    pointsize=12)

par(mfrow=c(1,2))
par(mar=c(4,4,1,2))
par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)

  plot(rate ~ temp2, log = 'y', type = 'n', yaxt = 'n', data = dd, 
       xlab = expression('Incubation temperature '*(degree*C)), 
       ylab = expression(CH[4]~'production rate'~(g~g[VS]^'-1'~h^'-1')),
       ylim = c(0.001, 0.1))
  text(dd$temp2, dd$rate, dd$t2)
  logaxis(2)
  arrows(dc$temp2[1] + 1, 0.98 * dc$rate[1], dc$temp2[2] - 1, 1.04 * dc$rate[2], col = 'red', length = 0.05)
  arrows(d50$temp2[1], 1.11 * d50$rate[1], d50$temp2[2], 0.90 * d50$rate[2], col = 'darkgreen', length = 0.05)
  arrows(di$temp2[2] - 1, di$rate[2], di$temp2[1] + 1, di$rate[1], col = 'red', length = 0.05)
  arrows(d20$temp2[1], 1.11 * d20$rate[1], d20$temp2[2], 0.90 * d20$rate[2], col = 'darkgreen', length = 0.05)
dev.off()

pdf('../plots/els_arrows.pdf', height = 3.2, width = 3.5)
#png('../plots/els_arrows.png', height = 3.2, width = 3.5, units = 'in', res = 600, pointsize = 13)
  par(mar = c(4, 5, 1, 1))
  plot(rate ~ temp2, type = 'n', data = dd, 
       xlab = expression('Incubation temperature '*(degree*C)), 
       ylab = expression(CH[4]~'production rate'~(g~g[VS]^'-1'~h^'-1')),
       ylim = c(0.001, 0.1))
  text(dd$temp2, dd$rate, dd$t2)
  arrows(dc$temp2[1] + 1, 0.98 * dc$rate[1], dc$temp2[2] - 1, 1.04 * dc$rate[2], col = 'red', length = 0.05)
  arrows(d50$temp2[1], 1.11 * d50$rate[1], d50$temp2[2], 0.90 * d50$rate[2], col = 'darkgreen', length = 0.05)
  arrows(di$temp2[2] - 1, di$rate[2], di$temp2[1] + 1, di$rate[1], col = 'red', length = 0.05)
  arrows(d20$temp2[1], 1.11 * d20$rate[1], d20$temp2[2], 0.90 * d20$rate[2], col = 'darkgreen', length = 0.05)
dev.off()
