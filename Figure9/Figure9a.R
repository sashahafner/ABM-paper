
library(ggplot2)
library(viridis)
library(readxl)
library("ABM")

meas <- read_xlsx('C:/Program Files/GitHub/mamemo/data/kari_2018/kari_2018.xlsx', sheet = 4, 
                  #meas <- read_xlsx('../../data/kari_2018/kari_2018.xlsx', sheet = 4, 
                  col_names = FALSE, skip = 2, na = 'NaN')
meas <- as.data.frame(meas[, c(1, 5, 12, 16, 19)])
names(meas) <- c('year', 'doy', 'temp_C', 'flux', 'vol')
meas$slurry_mass <- 1000 * meas$vol


#Emission rate in g/d and g/d-m3 (slurry volume)

meas$emis_rate <- meas$flux * 730


#Interpolate missing values for flux and get cumulative emission.
#Note that every emission interval is 1 day.
#Cumulative CH4 emission is in g.

meas$time <- meas$doy - meas$doy[1] + 365 * (meas$year == 2011)

meas$interp <- is.na(meas$emis_rate)
meas$emis_rate <- approx(meas$time, meas$emis_rate, xout = meas$time, rule = 2)$y
meas$cumCH4 <- cumsum(meas$emis_rate * 1)
meas$emis_rate_mass <- meas$emis_rate / meas$vol


#Repeat data five times to sort out VS so we have four complete data cycles (one cycle is two years).


meas_startup <- meas
meas_startup2 <- meas
meas_startup3 <- meas
meas_startup4 <- meas
meas_startup <- meas
meas_startup2$time <- meas$time + 730
meas_startup3$time <- meas$time + 730*2
meas_startup4$time <- meas$time + 730*3
meas$time <- meas$time + 730*4
meas <- rbind(meas_startup, meas_startup2, meas_startup3, meas_startup4, meas)


slurry_mass_dat <- meas[, c('time', 'slurry_mass')]
temp_dat <- meas[, c('time', 'temp_C')]
temp_dat <- na.omit(temp_dat)

mng_pars <- list(slurry_prod_rate = 0,
                 slurry_mass = slurry_mass_dat,
                 max_slurry_mass = 0,
                 resid_frac = 0,
                 area = 730)

out2 <- abm(3650, 1, add_pars = list (alpha_opt = 0.01, qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), pH = 7.3, temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, max_slurry_mass = 0, resid_frac = 0,
                                      area = 730))
out3 <- abm(3650, 1, add_pars = list (alpha_opt = 0.015, qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), pH = 7.3, temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, max_slurry_mass = 0, resid_frac = 0,
                                      area = 730))
out4 <- abm(3650, 1, add_pars = list (alpha_opt = 0.02, qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), pH = 7.3, temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, max_slurry_mass = 0, resid_frac = 0,
                                      area = 730))
out5 <- abm(3650, 1, add_pars = list (alpha_opt = 0.015, qhat_opt = 0.5*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), pH = 7.3, temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, max_slurry_mass = 0, resid_frac = 0,
                                      area = 730))
out6 <- abm(3650, 1, add_pars = list (alpha_opt = 0.015, qhat_opt = 0.75*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), pH = 7.3, temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, max_slurry_mass = 0, resid_frac = 0,
                                      area = 730))
out7 <- abm(3650, 1, add_pars = list (alpha_opt = 0.015, qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), pH = 7.3, temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, max_slurry_mass = 0, resid_frac = 0,
                                      area = 730))

meas <- read_xlsx('C:/ProgramData/AU277187/GitHubDesktop/repositories/mamemo/data/kari_2018/kari_2018_2.xlsx', sheet = 3, 
                  #meas <- read_xlsx('../../data/kari_2018/kari_2018.xlsx', sheet = 3, 
                  col_names = FALSE, skip = 2, na = 'NaN')
meas <- as.data.frame(meas[, c(1, 5, 12, 15, 19)])
names(meas) <- c('year', 'doy', 'temp_C', 'flux', 'vol')
meas$slurry_mass <- 1000 * meas$vol
meas$emis_rate <- meas$flux * 730


meas$time <- meas$doy - meas$doy[1] + 365 * (meas$year == 2011)

par(mfrow=c(1,2))
par(mar=c(4,4,1,2))
par(cex.axis=0.6, cex.lab=0.6, cex.main=0.6, cex.sub=0.6)

plot(out2$time,out2$rCH4/1000, type = "l", xlim =c(3650-730,3650), col ='red', ylim = c(0,250), ylab ='CH4 emission rate (g/d)', xlab = 'Time (d)')
lines(out3$time,out3$rCH4/1000, type = "l", xlim =c(3650-730,3650), col ='blue')
lines(out4$time,out4$rCH4/1000, type = "l", xlim =c(3650-730,3650), col ='orange')
points(meas$time,meas$emis_rate/1000, type = 'o', col ='black',cex=0.6)
legend(2910, 250, legend=c("alpha,op = 0.01","alpha,op = 0.015" ,"alpha,op = 0.02","Kariyapperuma et al. 2018"), col=c("red","blue","orange","black"), lty = c(1,1,1,NA), pch = c(NA,NA,NA,1), cex = 0.6, box.lty = 0, bg='transparent')
