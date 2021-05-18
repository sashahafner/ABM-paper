

tiff('../fig_output/Fig3.tiff', width = 6, height = 3.2, pointsize = 9, units = 'in', res = 600)
  par(mfrow=c(1,2))
  par(mar=c(4,5,4,2))
  
  plot(T_elsgaard,CH4_elsgaard, type = 'p', 
       col = c('black'), lty = 1, 
       ylab = expression('Specific'~CH[4]~'production'~(g~CH[4]~kg[VS]^'-1')), xlab = expression('Temperature'~ (degree*C)), ylim = c(0, 0.11))
  lines(Temp_int, CH4_5, col = c('red'), lty = 1)
  lines(Temp_int, CH4_3, col = c('orange'), lty = 1)
  lines(Temp_int, CH4_5_m1, col = c('blue'), lty = 2)
  lines(Temp_int, CH4_5_m2, col = c('palegreen4'), lty = 2)
  lines(Temp_int, CH4_5_m3, col = c('purple'), lty = 2)
  lines(Temp_int, CH4_5_m4, col = c('orange'), lty = 2)
  lines(Temp_int, CH4_5_m5, col = c('gray45'), lty = 2)
  legend('topleft', legend=c(expression('Elsgaard et al. 2016'),
                           expression('m1+m2+m3+m4+m5'),
                           expression('m1+m3+m4'),
                           expression('m1 ('*italic('Methanolobus psychrophilus')*')'),
                           expression('m2 ('*italic('Methanosarcina solegelidi')*')'),
                           expression('m3 ('*italic('Methanobrevibacter/Methanocorpusculum sp.')*')'),
                           expression('m4 (unknown methanogen)'),
                           expression('m5 ('*italic('Methanosarcina thermophila')*')')),
         col=c('black', 'red', 'orange', 'blue', 'palegreen4', 'purple', 'orange', 'gray45'), 
         lty=c(NA, 1, 1, 2, 2, 2, 2, 2), 
         pch = c(1, -1, -1, -1, -1, -1, -1, -1), cex=0.5, box.lty=0, bg = 'transparent')
  mtext('a', 3, line = 1)

  plot(CH4_emis_rate_VS ~ time, data = out1, type = 'l',
       xlab = 'Time (d)', 
       ylab = expression(CH[4]~'production rate'~(g~g[VS]^'-1'~h^'-1')))
  lines(CH4_emis_rate_VS - 0.01 ~ time, data = out2, col = 'red')
  lines(CH4_emis_rate_VS + 0.01 ~ time, data = out3, col = 'blue')
  abline(v = temp_dat$time, lty = 2, col = 'gray45')
  legend('topright', legend = c('m1 + m3 + m5', 'm3', 'm3 wide temp.'), lty = 1, col = c('black', 'red', 'blue'), cex = 0.5, bty = 'n')
  mtext(expression(37*degree*C*'                 '*52*degree*C*'            '*18*degree*C*'         '),
        3, cex = 0.9)
  mtext('b', 3, line = 1)
  
dev.off()

