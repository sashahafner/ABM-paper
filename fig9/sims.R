

meas <- read_xlsx('data/kari_2018.xlsx', sheet = 4, col_names = FALSE, skip = 2, na = 'NaN')
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

out2 <- abm(3650, 1, add_pars = list(alpha_opt = 0.007, ############## 0.01 
                                     qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
                                     conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), 
                                     pH = 7.3, 
                                     temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, 
                                     max_slurry_mass = 0, resid_frac = 0,
                                     area = 730))

out3 <- abm(3650, 1, add_pars = list(alpha_opt = 0.015, 
                                     qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
                                     conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), 
                                     pH = 7.3, 
                                     temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, 
                                     max_slurry_mass = 0, resid_frac = 0,
                                     area = 730))

out4 <- abm(3650, 1, add_pars = list(alpha_opt = 0.03, qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
                                     conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), 
                                     pH = 7.3, 
                                     temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, 
                                     max_slurry_mass = 0, resid_frac = 0,
                                     area = 730))

                                     #yield = c(all = 0.01),
out5 <- abm(3650, 1, add_pars = list(alpha_opt = 0.015, 
                                     qhat_opt = 0.4 * c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
                                     conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), pH = 7.3, 
                                     temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, 
                                     max_slurry_mass = 0, resid_frac = 0, area = 730))

out6 <- abm(3650, 1, add_pars = list(alpha_opt = 0.015, 
                                     qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
                                     conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), 
                                     pH = 7.3, temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, 
                                      max_slurry_mass = 0, resid_frac = 0, area = 730))

out7 <- abm(3650, 1, add_pars = list(alpha_opt = 0.015, 
                                     qhat_opt = 1.5 * c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
                                     conc_fresh = c(S2 = 0.0, SO4 = 0.2, TAN = 1.091, Sp = 41, VFA = 1.4), pH = 7.3, 
                                     temp_C = temp_dat, area = 730, slurry_prod_rate = 0, slurry_mass = slurry_mass_dat, 
                                     max_slurry_mass = 0, resid_frac = 0,
                                     area = 730))

# Take last cycle (2 years)
shift <- 4 * 730
out2$time <- out2$time - shift
out3$time <- out3$time - shift
out4$time <- out4$time - shift
out5$time <- out5$time - shift
out6$time <- out6$time - shift
out7$time <- out7$time - shift

out2 <- out2[out2$time >= 0, ]
out3 <- out3[out3$time >= 0, ]
out4 <- out4[out4$time >= 0, ]
out5 <- out5[out5$time >= 0, ]
out6 <- out6[out6$time >= 0, ]
out7 <- out7[out7$time >= 0, ]

# Measured emission?
meas <- read_xlsx('data/kari_2018.xlsx', sheet = 3, col_names = FALSE, skip = 2, na = 'NaN')
meas <- as.data.frame(meas[, c(1, 5, 12, 15, 19)])
names(meas) <- c('year', 'doy', 'temp_C', 'flux', 'vol')
meas$slurry_mass <- 1000 * meas$vol
# Convert flux to g/d, was ug/m2-s
#                             Area 
meas$emis_rate <- meas$flux * 730 * 1E-6 * 86400 

meas$time <- meas$doy - meas$doy[1] + 365 * (meas$year == 2011)
