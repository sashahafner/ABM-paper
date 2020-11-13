library(ABM)

out1 <- abm(365, 1, add_pars = list(temp_C = 20, resid_frac = 0.01, resid_enrich = c(m1 = 5, m2 = 5, m3 = 5, m4 = 5, m5 = 5)))
out2 <- abm(365, 1, add_pars = list(temp_C = 20, resid_frac = 0.5, resid_enrich = c(m1 = 5, m2 = 5, m3 = 5, m4 = 5, m5 = 5)))
out3 <- abm(365, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = c(m1 = 5, m2 = 5, m3 = 5, m4 = 5, m5 = 5)))
out4 <- abm(365, 1, add_pars = list(temp_C = 20, resid_enrich = c(m1 = 0, m2 = 0, m3 = 0, m4 = 0, m5 = 0), resid_frac = 0.01))
out5 <- abm(365, 1, add_pars = list(temp_C = 20, resid_enrich = c(m1 = 0, m2 = 0, m3 = 0, m4 = 0, m5 = 0), resid_frac = 0.5))
out6 <- abm(365, 1, add_pars = list(temp_C = 20, resid_enrich = c(m1 = 0, m2 = 0, m3 = 0, m4 = 0, m5 = 0), resid_frac = 0.1))

out1$methanogenbiomass <- out1$m1+out1$m2+out1$m3+out1$m4+out1$m5
out2$methanogenbiomass <- out2$m1+out2$m2+out2$m3+out2$m4+out2$m5
out3$methanogenbiomass <- out3$m1+out3$m2+out3$m3+out3$m4+out3$m5
out4$methanogenbiomass <- out4$m1+out4$m2+out4$m3+out4$m4+out4$m5
out5$methanogenbiomass <- out5$m1+out5$m2+out5$m3+out5$m4+out5$m5
out6$methanogenbiomass <- out6$m1+out6$m2+out6$m3+out6$m4+out6$m5

svg(filename="Figure5a_new.svg", 
    width=7, 
    height=3.5, 
    pointsize=12)
par(mfrow=c(1,2))
par(mar=c(4,4,1,1))
par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)
matplot(out1$time, out1[, c('methanogenbiomass')]/1000, type = 'l', 
        col = c('orange'), lty = 1, ylab ='', ylim = c(0,33))
lines(out2$time,out2$methanogenbiomass/1000, type = 'l', 
      col = c('purple'), lty = 1, ylab ='',xaxt='n')
lines(out3$time,out3$methanogenbiomass/1000, type = 'l', 
      col = c('palegreen4'), lty = 1, ylab ='',xaxt='n')
lines(out4$time,out4$methanogenbiomass/1000, type = 'l', 
      col = c('orange'), lty = 2, ylab ='',xaxt='n')
lines(out5$time,out5$methanogenbiomass/1000, type = 'l', 
      col = c('purple'), lty = 2, ylab ='',xaxt='n')
lines(out6$time,out6$methanogenbiomass/1000, type = 'l', 
      col = c('palegreen4'), lty = 2, ylab ='',xaxt='n')
legend(0, 33, legend=c("resid frac = 0.5, meth enrich = 5","resid frac = 0.1, meth enrich = 5","resid frac = 0.01, meth enrich = 5","resid frac = 0.5, meth enrich = 0","resid frac = 0.1, meth enrich = 0","resid frac = 0.01, meth enrich = 0"),
       col=c("purple","palegreen4","orange","purple","palegreen4","orange"), lty=c(1,1,1,2,2,2), cex=0.6, box.lty=0, bg = 'transparent')
dev.off()