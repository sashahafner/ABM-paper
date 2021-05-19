
grp_pars = list(grps = c('m1', 'm2', 'm3', 'm4', 'm5','sr1'),
                yield = c(default = 0.04, sr1 = 0.065),
                xa_fresh = c(default = 0.001, m3 = 0.01),
                xa_init = c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001, sr1 = 0.005),
                decay_rate = c(all = 0.02),
                ks_coefficient = c(all = 1.0, 0.4),
                resid_enrich = c(all = 0.0),
                qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8, sr1 = 8),
                T_opt = c(m1 = 18, m2 = 28, m3 = 36, m4 = 43.75, m5 = 55, sr1 = 40),
                T_min = c(m1 = 0, m2 = 8, m3 = 15, m4 = 26.25, m5 = 30, sr1 = 5),
                T_max = c(m1 = 25, m2 = 38, m3 = 45, m4 = 51.25, m5 = 60, sr1 = 50),
                ki_NH3_min = c(all = 0.015),
                ki_NH3_max = c(all = 0.13),
                ki_NH4_min = c(all = 2.7),
                ki_NH4_max = c(all = 4.8),
                pH_upr = c(all = 8.0),
                pH_lwr = c(default = 6.5, sr1 = 5.5))

pH_dat1 <- data.frame(time = c(0, 500, 501, 801, 901, 1500) + 1000,
                      pH =   c(7,   7,   5,    5,    7,    7)) 
SO4_dat <- data.frame(time = c(0, 500, 501, 801, 901, 1500) + 1000, 
                      SO4 = c(0.2, 0.2, 5.5, 5.5, 0.2, 0.2))

out1 <- abm(1800 + 1000,1, add_pars = list(pH = pH_dat1, resid_frac = 0.95), approx_method_pH = 'linear')
#out2 <- abm(1800 + 1000,1, grp_pars = grp_pars, add_pars = list(resid_frac = 0.95), man_pars = list(conc_fresh = list(S2 = 0.0, SO4 = SO4_dat, TAN = 1.0, VFA = 4.2, Sp = 65, COD = 160), pH = pH_dat1), approx_method_pH = 'linear')

out1$time_new <- out1$time - 1300
out1$sulfate_conc <- out1$sulfate/out1$slurry_mass
#out2$time_new <- out2$time - 1300
#out2$sulfate_conc <- out2$sulfate/out2$slurry_mass

