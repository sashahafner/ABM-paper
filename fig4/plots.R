tiff('../fig_output/Fig4.tiff', width = 6, height = 3.2, pointsize = 9, units = 'in', res = 600)

  par(mfrow=c(1, 2))
  par(mar=c(4, 4, 4, 2))
  par(cex.axis=0.8, cex.lab=0.8, cex.main=0.8, cex.sub=0.8, mgp = c(1.6, 0.7, 0))
  
  plot(temp_C, qhat1,xlim = c(0,60), ylim=c(0, 10), type ='l', 
       xlab = expression('Temperature'~(degree*C)), 
       ylab = expression(italic(q['max'])~(g['COD-S']~~g['COD-B']^'-1'~d^'-1')), 
       col = 'blue', lwd = 1,lty = 1)
  lines(temp_C, qhat2, col = 'orange', lwd = 1, lty = 2)
  lines(temp_C, qhat3, col = 'palegreen4', lwd = 1,lty = 1)
  lines(temp_C, qhat4, col = 'purple', lwd = 1, lty = 2)
  lines(temp_C, qhat5, col = 'red', lwd = 1, lty = 1)
  legend('topleft', legend=c('m1','m2','m3','m4','m5'),
         col=c('blue','orange','palegreen4','purple','red'), lty=c(1,2,1,2,1), cex=0.6, box.lty=0)
  text(18, 4.0, '18, 3.6', cex = 0.6)
  text(28, 6.0, '28, 5.6', cex = 0.6)
  text(36, 7.6, '36, 7.2', cex = 0.6)
  text(43.75, 8.4, '44, 8', cex = 0.6)
  text(55, 8.4, '55, 8', cex = 0.6)
  mtext('a', 3, line = 1)
  
  
  matplot(out$temp_C, out[, c('m1', 'm2', 'm3', 'm4', 'm5', 'mtot')] / 1000, type = 'l', 
          col = c('blue', 'orange', 'palegreen4', 'purple', 'red', 'gray45'), lty = c(1, 2, 1, 2, 1, 1), 
          xlab = expression('Temperature'~(degree*C)), 
          ylab = expression('Methanogen biomass'~(kg['COD-B']))) 
  legend('topleft', legend=c('Methanogen biomass'),
         col=c('gray45'), lty=1, cex=0.6, box.lty=0, bg = 'transparent')
  mtext('b', 3, line = 1)

dev.off()
