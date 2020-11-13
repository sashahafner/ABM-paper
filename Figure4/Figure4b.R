
library("ABM")
temp_dat <- data.frame(time =   c(0, 10000),
                       temp_C = c(0,60)) 
out2 <- abm(10000, 1,  add_pars = list(temp_C = temp_dat, resid_frac = 0.95), approx_method_temp = 'linear')
out2$biomass <- (out2$m1+out2$m2+out2$m3+out2$m4+out2$m5)/1000

par(mar=c(4,4,1,2))
par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)

matplot(out2$temp_C, out2[, c('m1','m2','m3','m4','m5')]/1000, type = 'l', 
        col = c('blue','orange','palegreen4','purple','red'), lty = c(1,2,1,2,1), ylim = c(0,25), ylab ='', xlab = '')
lines(out2$temp_C,out2$biomass, col = 'gray45',lty = 2)
legend(0, 25, legend=c("methanogen biomass","m1","m2","m3","m4","m5"),
       col=c("gray45","blue","orange","palegreen4","purple","red"), lty=c(1,2,1,2,1), cex=0.6, box.lty=0, bg = "transparent")

