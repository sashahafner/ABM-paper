tiff('../fig_output/Fig9.tiff', width = 6, height = 3, pointsize = 9, units = 'in', res = 600)

  par(mfrow=c(1, 2))
  par(mar=c(4, 4, 4, 4))
  par(cex.axis=0.7, cex.lab=0.7, cex.main=0.7, cex.sub=0.7, mgp = c(1.4, 0.6, 0))

  plot(out2$time, out2$rCH4/1000, type = "l", col ='red', ylim = c(0,250), ylab ='CH4 emission rate (g/d)', xlab = 'Time (d)')
  lines(out3$time, out3$rCH4/1000, type = "l", col ='blue')
  lines(out4$time, out4$rCH4/1000, type = "l", col ='orange')
  points(meas$time, meas$emis_rate/1000, type = 'o', col ='black',cex=0.6)
  legend('topleft', 
         legend = c(expression(italic(alpha['opt'])~'= 0.01'),
                    expression(italic(alpha['opt'])~'= 0.015'),
                    expression(italic(alpha['opt'])~'= 0.02'),
                    expression("Kariyapperuma"~italic('et al.') ~"2018")), 
         col=c("red","blue","orange","black"), lty = c(1,1,1,NA), pch = c(NA,NA,NA,1), cex = 0.6, box.lty = 0, bg='transparent')
  mtext('a', 3, line = 1)
  
  plot(out5$time,out5$rCH4/1000, type = "l", col ='red', ylim = c(0,250), ylab ='CH4 emission rate (g/d)', xlab = 'Time (d)')
  lines(out6$time,out6$rCH4/1000, type = "l", col ='blue')
  lines(out7$time,out7$rCH4/1000, type = "l", col ='orange')
  points(meas$time,meas$emis_rate/1000, type = 'o', col ='black',cex=0.6)
  legend('topleft', 
         #legend=c("qhat,max,opt = 50% of default","qhat,max,opt = 75% of default" ,"qhat,max,opt = default","Kariyapperuma et al. 7018"), 
         legend = c(expression(italic(hat(q)['opt'])~'= 50% of default'),
                    expression(italic(alpha['opt'])~'= 50% of default'),
                    expression(italic(alpha['opt'])~'= 0.02'),
                    expression("Kariyapperuma"~italic('et al.') ~"2018")), 
         col=c("red","blue","orange","black"), lty = c(1,1,1,NA), pch = c(NA,NA,NA,1), cex = 0.6, box.lty = 0, bg='transparent')  
  mtext('b', 3, line = 1)

#  plot(x_vector,alpha_opt_vector, type="l", lty =1, col = 'red', 
#       xlab = 'Parameter change (%)',
#       ylab = expression('Cumulative'~CH[4]~'change (%)')) 
#  lines(x_vector, qhat_vector, col = 'palegreen4')
#  lines(x_vector, yield_vector, col = 'blue')
#  lines(x_vector, methanogen_enrich_vector, col = 'orange')
#  lines(x_vector, initial_vector, col = 'purple')
#  lines(x_vector, ks_vector, col = 'black')
#  legend('topleft', legend = c(expression(italic(alpha['opt'])), 
#                               expression(italic(q['max'])), 
#                               expression(italic(Y['i'])), 
#                               expression(italic(a['enrich'])), 
#                               'Initial mic. biomass',
#                               expression(italic(K['S, coef']))), 
#          col=c("red","palegreen4","blue","orange","purple",'black'), 
#          lty = c(1,1,1), cex = 0.6, box.lty = 0, bg='transparent')

dev.off()
