tiff('../fig_output/Fig9.tiff', width = 6, height = 3, pointsize = 9, units = 'in', res = 600)

  par(mfrow=c(1, 2))
  par(mar=c(4, 4, 4, 4))
  par(cex.axis=0.8, cex.lab=0.8, cex.main=0.8, cex.sub=0.8, mgp = c(1.6, 0.7, 0))

  plot(out2$time, out2$rCH4/1000, type = "n", col ='red', xlim = c(200, 730), ylim = c(0,250), 
       ylab = expression('CH'[4]~'emission rate'~(g~d^'-1')), xlab = 'Day of year', xaxt = 'n')
  axis(1, at = c(2:3 * 100, 0:3 * 100 + 365, 730), labels = c(200, 300, 0, 100, 200, 300, 0))
  points(meas$time, meas$emis_rate/1000, type = 'o', col ='gray45',cex=0.6)
  lines(out2$time, out2$rCH4/1000, type = "l", col ='red')
  lines(out3$time, out3$rCH4/1000, type = "l", col ='blue')
  lines(out4$time, out4$rCH4/1000, type = "l", col ='orange')
  legend('topleft', 
         legend = c(expression(italic(alpha['opt'])~'= 0.01'),
                    expression(italic(alpha['opt'])~'= 0.015 (default)'),
                    expression(italic(alpha['opt'])~'= 0.02'),
                    expression("Kariyapperuma"~italic('et al.') ~"2018")), 
         col=c("red","blue","orange","gray45"), lty = c(1,1,1,NA), pch = c(NA,NA,NA,1), cex = 0.6, box.lty = 0, bg='transparent')
  mtext('a', 3, line = 1)
  
  plot(out5$time,out5$rCH4/1000, type = "n", col ='red', xlim = c(200, 730), ylim = c(0,250), 
       ylab = expression('CH'[4]~'emission rate'~(g~d^'-1')), xlab = 'Day of year', xaxt = 'n')
  axis(1, at = c(2:3 * 100, 0:3 * 100 + 365, 730), labels = c(200, 300, 0, 100, 200, 300, 0))
  points(meas$time, meas$emis_rate/1000, type = 'o', col ='gray45',cex=0.6)
  lines(out5$time, out5$rCH4/1000, type = "l", col ='red')
  lines(out6$time, out6$rCH4/1000, type = "l", col ='blue')
  lines(out7$time, out7$rCH4/1000, type = "l", col ='orange', lty = 3)
  legend('topleft', 
         legend = c(
                    expression(italic(q['max, opt'])~'= 40% of default'),
                    expression(italic(q['max, opt'])~'= default'),
                    expression(italic(q['max, opt'])~'= 150% of default'),
                    expression("Kariyapperuma"~italic('et al.') ~"2018")), 
         col=c("red","blue","orange","gray45"), lty = c(1,1,3,NA), pch = c(NA,NA,NA,1), cex = 0.6, box.lty = 0, bg='transparent')  
  mtext('b', 3, line = 1)

dev.off()
