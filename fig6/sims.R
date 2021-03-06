temp_dat1 <- data.frame(time =   c(0, 730, 912, 1095, 1277, 1460),
                        temp_C = c(20, 20, 30, 10, 30, 10)) 
temp_dat2 <- data.frame(time =   c(0, 730, 740, 741, 751, 752, 1042, 1043, 1944, 1945, 4002),
                        temp_C = c(38, 38,  38,  10,  10,  38,   38,   10,   10,   38, 38)) 
temp_dat3 <- data.frame(time =   c(0, 730, 760, 790, 820, 850, 880, 910, 940, 970, 1000, 1030, 1060, 1090, 1120, 1150, 1180, 1210, 1240, 1270, 1300, 1330, 1360, 1390, 1420, 1450),
                        temp_C = c(20, 20, 18, 14.2, 5.87, 2.15, 2.26, 1.69, 1.45, 5.7, 14.31, 18.5, 22.4, 20.82, 18, 14.2, 5.87, 2.15, 2.26, 1.69, 1.45, 5.7, 14.31, 18.5, 22.4, 20.82))  

out1 <- abm(1460,3, add_pars = list(temp_C = temp_dat3, resid_frac = 0.95), approx_method_temp = 'linear')
out2 <- abm(4002,3, add_pars = list(temp_C = temp_dat2, resid_frac = 0.95), approx_method_temp = 'linear')
out3 <- abm(1460,3, add_pars = list(temp_C = temp_dat3, resid_frac = 0.1), approx_method_temp = 'linear')

out1$time_new <- out1$time-730
out2$time_new <- out2$time-730
out3$time_new <- out3$time-730



