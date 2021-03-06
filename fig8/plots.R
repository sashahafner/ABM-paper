tiff('../fig_output/Fig8.tiff', width = 6, height = 3, pointsize = 9, units = 'in', res = 600)

  par(mfrow=c(1, 2))
  par(mar=c(4, 4, 4, 4))
  par(cex.axis=0.8, cex.lab=0.8, cex.main=0.8, cex.sub=0.8, mgp = c(1.6, 0.7, 0))
  
  plot(x_vector,alpha_opt_vector, type="l", lty =1, col = 'red', 
       xlab = 'Parameter change (%)',
       ylab = expression('Change in cumulative'~CH[4]~'(%)')) 
  lines(x_vector, qhat_vector, col = 'palegreen4')
  lines(x_vector, yield_vector, col = 'blue')
  lines(x_vector, methanogen_enrich_vector, col = 'orange')
  lines(x_vector, initial_vector, col = 'purple')
  lines(x_vector, ks_vector, col = 'black')
  legend('topleft', legend = c(expression(italic(alpha['opt'])), 
                               expression(italic(q['max, opt'])), 
                               expression(italic(Y['i'])), 
                               expression(italic(a['enrich'])), 
                               'Initial mic. biomass',
                               expression(italic(K['S, coef']))), 
          col=c("red","palegreen4","blue","orange","purple",'black'), 
          lty = c(1,1,1), cex = 0.6, box.lty = 0, bg='transparent')
  mtext('a', 3, line = 1)

  plot(x_vector_temperature,Temperature_vector, type="l", lty =1, col = 'red', 
       xlab = expression('Parameter change'~('% or'~degree*C)),
       ylab = expression('Change in cumulative'~CH[4]~'(%)'), 
       xlim =c(-50,50))
  lines(x_vector,Sp_vector, col = 'palegreen4')
  lines(x_vector,residual_fraction_vector, col = 'blue')
  legend('topleft', legend=c("Temperature", expression(italic(S[p])), expression(italic(f[resid]))), 
         col=c("red","palegreen4","blue"), lty = c(1,1,1), cex = 0.6, box.lty = 0, bg='transparent')
  mtext('b', 3, line = 1)

dev.off()
