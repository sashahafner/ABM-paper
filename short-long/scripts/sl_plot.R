# Plot of short- vs. long-term effects

source('C:/Program Files/GitHub/mamemo/figures/short-long/functions/logaxis.R')
library('ABM')

# Temperature data
temp_dat <- data.frame(time = 100 + c(-1, 0, 100), 
                       temp_C =     c(37, 52, 18)) 

# 1 = 3 groups, 2 = m3 only, 3 = m3 broad
rrf <- 0.95
out1 <- abm(320, 3, 
            add_pars = list(grps = c('m1', 'm3', 'm5'),
                            temp_C = temp_dat, resid_frac = rrf, 
                            max_slurry_mass = 1,
                            slurry_mass = rrf * 1, slurry_prod_rate = 1/50,
                            conc_fresh.Sp = 50, conc_fresh.COD = 60, conc_fresh.VFA = 4,
                            area = 0),
            approx_method_temp = 'constant')

out2 <- abm(320, 3, 
            add_pars = list(grps = c('m3'),
                            temp_C = temp_dat, resid_frac = rrf, 
                            max_slurry_mass = 1,
                            slurry_mass = rrf * 1, slurry_prod_rate = 1/50,
                            conc_fresh.Sp = 50, conc_fresh.COD = 60, conc_fresh.VFA = 4,
                            area = 0),
            approx_method_temp = 'constant')

out3 <- abm(320, 3, 
            add_pars = list(grps = c('m3'),
                            temp_C = temp_dat, resid_frac = rrf, 
                            max_slurry_mass = 1,
                            slurry_mass = rrf * 1, slurry_prod_rate = 1/50,
                            conc_fresh.Sp = 50, conc_fresh.COD = 60, conc_fresh.VFA = 4,
                            area = 0, T_min.m3 = 10, T_max.m3 = 55),
            approx_method_temp = 'constant')


pdf('../plots/short_long_other.pdf', height = 11, width = 8.5)
  par(mfrow = c(3, 1))
  
svg(filename="Figure3b_shortlong.svg", 
      width=7, 
      height=3.5, 
      pointsize=12)
  
  par(mfrow=c(1,2))
  par(mar=c(4,4,1,2))
  par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)  

  plot(temp_C ~ time, type = 'l', col = 'red', data = out1)
  abline(v = temp_dat$time, lty = 2, col = 'gray45')
  
  matplot(out1$time, out1[, nn <- c('m1_conc', 'm3_conc', 'm5_conc')], 
          type = 'l', lty = 1, xlab = 'Time (d)', ylab = 'Biomass conc. (g/kg)')
  legend('topleft', nn, col = 1:5, lty = 1)
  abline(v = temp_dat$time, lty = 2, col = 'gray45')
  
  plot(VFA_conc ~ time, type = 'l', col = 'purple', data = out1)
  abline(v = temp_dat$time, lty = 2, col = 'gray45')
dev.off()

#png('../plots/short_long_log.png', height = 3.2, width = 3.5, units = 'in', res = 600, pointsize = 13)
pdf('../plots/short_long_log.pdf', height = 3.2, width = 3.5)
  par(mar = c(4, 5, 1, 1))
  
  svg(filename="Figure3b_shortlong.svg", 
      width=7, 
      height=3.5, 
      pointsize=12)
  
  par(mfrow=c(1,2))
  par(mar=c(4,4,1,2))
  par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)  
  plot(CH4_emis_rate_VS ~ time, data = out1, type = 'l', log = 'y', yaxt = 'n', #ylim = c(0.03, 1),
       xlab = 'Time (d)', 
       ylab = expression(CH[4]~'production rate'~(g~g[VS]^'-1'~h^'-1')))
  lines(0.8 * CH4_emis_rate_VS ~ time, data = out2, col = 'red')
  lines(1.2 * CH4_emis_rate_VS ~ time, data = out3, col = 'green')
  logaxis(2)
  abline(v = temp_dat$time, lty = 2, col = 'gray45')
  mtext(expression(37*degree*C*'              '*52*degree*C*'               '*18*degree*C*'         '),
        3, cex = 0.7)
  #legend('bottomright', c('1 broad', '3', '1'), lty = 1, col = c('green', 'black', 'red'), pch = -1, cex = 0.7, title = 'Groups', bg = 'white')
dev.off()
  

pdf('../plots/short_long.pdf', height = 3.2, width = 3.5)
  par(mar = c(4, 5, 1, 1))
  
  svg(filename="Figure3b_shortlong.svg", 
      width=7, 
      height=3.5, 
      pointsize=12)
  
  par(mfrow=c(1,2))
  par(mar=c(4,4,1,2))
  par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)    
  
  plot(CH4_emis_rate_VS ~ time, data = out1, type = 'l',
       xlab = 'Time (d)', 
       ylab = expression(CH[4]~'production rate'~(g~g[VS]^'-1'~h^'-1')))
  lines(0.8 * CH4_emis_rate_VS ~ time, data = out2, col = 'red')
  lines(1.2 * CH4_emis_rate_VS ~ time, data = out3, col = 'green')
  abline(v = temp_dat$time, lty = 2, col = 'gray45')
  mtext(expression(37*degree*C*'              '*52*degree*C*'               '*18*degree*C*'         '),
        3, cex = 0.7)
dev.off()
  
