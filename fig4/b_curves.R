
temp_dat <- data.frame(time =   c(0, 10000), temp_C = c(0,60)) 

# Running model may take a few minutes to run (due to high resid_frac)
out <- abm(10000, delta_t = 10,  add_pars = list(temp_C = temp_dat, resid_frac = 0.95), approx_method_temp = 'linear')
out$mtot <- (out$m1 + out$m2 + out$m3 + out$m4 + out$m5)

