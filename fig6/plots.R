tiff('../fig_output/Fig6.tiff', width = 6, height = 6, pointsize = 9, units = 'in', res = 600)

  par(mfrow=c(2, 2))
  par(mar=c(4, 4, 4, 4))
  par(cex.axis=0.7, cex.lab=0.7, cex.main=0.7, cex.sub=0.7, mgp = c(1.4, 0.6, 0))
  
  # part a
  matplot(out1$time_new, out1[, c('m1','m2')]/1000, type = 'l', 
          col = c('blue', 'orange'), lty = 2, xlim = c(0,730),
          xlab = 'Time (d)',
          ylab = expression('Methanogen biomass'~(kg['COD-B']))) 
  lines(out3$time_new, out3$m1/1000, col="blue", lty = 1)
  lines(out3$time_new, out3$m2/1000, col="orange", lty = 1)
  legend(350, 10, legend = c('Temperature',
                            expression('m1,'~italic('f'['resid'])~'= 0.95'), 
                            expression('m2,'~italic('f'['resid'])~'= 0.95'), 
                            expression('m1,'~italic('f'['resid'])~'= 0.10'), 
                            expression('m2,'~italic('f'['resid'])~'= 0.10')),
         col=c('black','blue', 'red', 'blue','red'), lty=c(2,3,3,1,1), box.lty=0, bg = 'transparent', cex = 0.6)
  par(new = TRUE)
  plot(temp_C ~ time_new, lty = 2, col = 'black', data = out1, type = 'l',
       axes = FALSE, xlab = '', ylab = '',xlim = c(0,730))
  axis(4)
  mtext('a', 3, line = 1)
  mtext(expression('Temperature'~(degree*C)), 4, line = 2, cex = 0.6)

  # part b
  matplot(out2$time_new, out2[, c('m1','m2','m3','m4','m5')]/1000, type = 'l', 
          col = c('blue', 'orange','palegreen4','purple','red'), lty = 1, xlim = c(0,2000),
          xlab = 'Time (d)',
          ylab = expression('Methanogen biomass'~(kg['COD-B']))) 
  legend(360, 22, legend=c('Temperature','m1','m2','m3','m4','m5'),
         col=c('black','blue', 'orange','palegreen4','purple','red'), lty=c(2,1,1,1,1,1), cex=0.7, box.lty=0, bg = 'transparent')
  par(new = TRUE)
  plot(temp_C ~ time_new, lty = 2, col = 'black', data = out2, type = 'l',
       axes = FALSE, xlab = '', ylab = '',xlim = c(1, 2000))
  axis(4)
  mtext('b', 3, line = 1)
  mtext(expression('Temperature'~(degree*C)), 4, line = 2, cex = 0.6)

  # part c
  matplot(out1$time_new, out1[, c('CH4_emis_rate_VS')], type = 'l', 
          col = c('blue'), lty = 2, xlim = c(0,730),
          xlab = 'Time (d)',
          ylab = expression(CH[4]~'emission rate'~(g['CH4']~g['VS loaded']^'-1'))) 
  lines(out3$time_new, out3$CH4_emis_rate_VS, col="blue", lty = 1)
  legend(0, 0.075, legend=c('Temperature', 
                            expression('CH'[4]*','~italic('f'['resid'])~'= 0.95'), 
                            expression('CH'[4]*','~italic('f'['resid'])~'= 0.10'),
                            expression('VFA,'~italic(f['resid'])~'= 0.95'), 
                            expression('VFA,'~italic(f['resid'])~'= 0.10')),
         col=c('black','blue', 'blue', 'red', 'red'), lty=c(2,2,1,2,1), cex=0.6, box.lty=0, bg = 'transparent')
  par(new = TRUE)
  plot(temp_C ~ time_new, lty = 2, col = 'black', data = out1, type = 'l',
       axes = FALSE, xlab = '', ylab = '',xlim = c(0,730), ylim = c(0,23))
  axis(4)
  lines(out1$time_new, out1$VFA_conc, col = "red", lty=2)
  lines(out3$time_new, out3$VFA_conc, col = "red", lty=1)
  mtext('c', 3, line = 1)
  mtext(expression('Temperature'~(degree*C)~'or VFA conc.'~(k['COD']~kg['slurry'])), 4, line = 2, cex = 0.6)


  # part d
  matplot(out2$time_new, out2[, c('CH4_emis_rate_VS')], type = 'l', 
          col = c('blue'), lty = 1, xlim = c(0,2000),
          xlab = 'Time (d)',
          ylab = expression(CH[4]~'emission rate'~(g['CH4']~g['VS loaded']^'-1'))) 
  legend(310, 0.22, legend=c('Temperature', expression('CH'[4]), 'VFA'),
         col=c('black','blue', 'red'), lty=c(2,1,1), cex=0.6, box.lty=0, bg = 'transparent')
  par(new = TRUE)
  plot(temp_C ~ time_new, lty = 2, col = 'black', data = out2, type = 'l',
       axes = FALSE, xlab = '', ylab = '',xlim = c(0,2000), ylim = c(0, 40))
  axis(4)
  lines(out2$time_new, out2$VFA_conc, col = "red", lty=1)
  mtext('d', 3, line = 1)
  mtext(expression('Temperature'~(degree*C)~'or VFA conc.'~(k['COD']~kg['slurry'])), 4, line = 2, cex = 0.6)

dev.off()
