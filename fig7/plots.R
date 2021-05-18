tiff('../fig_output/Fig7.tiff', width = 6, height = 3, pointsize = 9, units = 'in', res = 600)

  par(mfrow=c(1, 2))
  par(mar=c(4, 4, 4, 4))
  par(cex.axis=0.8, cex.lab=0.8, cex.main=0.8, cex.sub=0.8, mgp = c(1.6, 0.7, 0))
  
  # part a
  matplot(out1$time_new, out1[, c('m2','m3')]/1000, type = 'l', 
          xlab = 'Time (d)',
          ylab = expression('Methanogen biomass'~(kg['COD-B'])), 
          col = c('orange','palegreen4'), lty = 1, xlim = c(0,1000), ylim = c(0, 16))
  legend(260, 15, legend=c("pH","m2","m3"),
         col=c("black","orange","palegreen4"), lty=c(2,1,1), cex=0.6, box.lty=0, bg = 'transparent')
  par(new = TRUE)
  plot(pH ~ time_new, lty = 2, col = 'black', data = out1, type = 'l',
       axes = FALSE, xlab = '', ylab = '',xlim = c(0,1000))
  mtext('a', 3, line = 1)
  mtext('pH', 4, line = 2, cex = 0.6)
  axis(4)

  # part b
  matplot(out1$time_new, out1[, c('CH4_emis_rate_VS')], type = 'l', 
          xlab = 'Time (d)',
          ylab = expression(CH[4]~'emission rate'~(g['CH4']~g['VS loaded']^'-1')), 
          col = c('blue'), lty = 1, xlim = c(0,1000), ylim = c(0,0.13))
  legend(120, 0.12, legend=c("pH", expression(CH[4]~'emis.')),
         col=c("black","blue"), lty=c(2,1,1,1,1,1,1), cex=0.6, box.lty=0, bg = 'transparent')
  par(new = TRUE)
  plot(pH ~ time_new, lty = 2, col = 'black', data = out1, type = 'l',
       axes = FALSE, xlab = '', ylab = '',xlim = c(0,1000), ylim =c(5,7))
  mtext('b', 3, line = 1)
  mtext('pH', 4, line = 2, cex = 0.6)
  axis(4)

dev.off()
