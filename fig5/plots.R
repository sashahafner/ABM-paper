tiff('../fig_output/Fig5.tiff', width = 6, height = 3.2, pointsize = 9, units = 'in', res = 600)

  par(mfrow=c(1, 2))
  par(mar=c(4, 4, 4, 2))
  par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)
  
  matplot(out1$time, out1[, c('methanogenbiomass')]/1000, type = 'l', col = c('orange'), lty = 1, 
          xlab = 'Time (d)',
          ylab = expression('Methanogen biomass'~(kg['COD-B'])), ylim = c(0,33))
  lines(out2$time,out2$methanogenbiomass/1000, type = 'l', col = c('purple'), lty = 1, ylab ='',xaxt='n')
  lines(out3$time,out3$methanogenbiomass/1000, type = 'l', col = c('palegreen4'), lty = 1, ylab ='',xaxt='n')
  lines(out4$time,out4$methanogenbiomass/1000, type = 'l', col = c('orange'), lty = 2, ylab ='',xaxt='n')
  lines(out5$time,out5$methanogenbiomass/1000, type = 'l', col = c('purple'), lty = 2, ylab ='',xaxt='n')
  lines(out6$time,out6$methanogenbiomass/1000, type = 'l', col = c('palegreen4'), lty = 2, ylab ='',xaxt='n')
  legend(0, 34, legend=c("resid frac = 0.5, meth enrich = 5","resid frac = 0.1, meth enrich = 5",
                         "resid frac = 0.01, meth enrich = 5","resid frac = 0.5, meth enrich = 0",
                         "resid frac = 0.1, meth enrich = 0","resid frac = 0.01, meth enrich = 0"),
         col=c("purple","palegreen4","orange","purple","palegreen4","orange"), lty=c(1,1,1,2,2,2), 
         cex=0.6, box.lty=0, bg = 'transparent')
  mtext('a', 3, line = 1)

  matplot(out1$time, out1[, c('CH4_emis_cum_VS')],ylim = c(0,0.03), type = 'l', col = c('orange'), lty = 1, 
          xlab = 'Time (d)',
          ylab = expression(CH[4]~'emissin'~(g['CH4']~g['VS loaded']^'-1')))
  lines(out2$time,out2$CH4_emis_cum_VS, type = 'l', col = c('purple'), lty = 1, ylab ='',xaxt='n')
  lines(out3$time,out3$CH4_emis_cum_VS, type = 'l', col = c('palegreen4'), lty = 1, ylab ='',xaxt='n')
  lines(out4$time,out4$CH4_emis_cum_VS, type = 'l', col = c('orange'), lty = 2, ylab ='',xaxt='n')
  lines(out5$time,out5$CH4_emis_cum_VS, type = 'l', col = c('purple'), lty = 2, ylab ='',xaxt='n')
  lines(out6$time,out6$CH4_emis_cum_VS, type = 'l', col = c('palegreen4'), lty = 2, ylab ='',xaxt='n')
  legend(0, 0.031, legend=c("resid frac = 0.5, meth enrich = 5","resid frac = 0.1, meth enrich = 5",
                           "resid frac = 0.01, meth enrich = 5","resid frac = 0.5, meth enrich = 0",
                           "resid frac = 0.1, meth enrich = 0","resid frac = 0.01, meth enrich = 0"),
         col=c("purple","palegreen4","orange","purple","palegreen4","orange"), lty=c(1,1,1,2,2,2), 
         cex=0.6, box.lty=0, bg = 'transparent')
  mtext('b', 3, line = 1)

dev.off()
