
out1 <- abm(365, 1, add_pars = list(temp_C = 20, resid_frac = 0.001, resid_enrich = c(m1 = 5, m2 = 5, m3 = 5, m4 = 5, m5 = 5)))
out2 <- abm(365, 1, add_pars = list(temp_C = 20, resid_frac = 0.5, resid_enrich = c(m1 = 5, m2 = 5, m3 = 5, m4 = 5, m5 = 5)))
out3 <- abm(365, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = c(m1 = 5, m2 = 5, m3 = 5, m4 = 5, m5 = 5)))
out4 <- abm(365, 1, add_pars = list(temp_C = 20, resid_enrich = c(m1 = 0, m2 = 0, m3 = 0, m4 = 0, m5 = 0), resid_frac = 0.001))
out5 <- abm(365, 1, add_pars = list(temp_C = 20, resid_enrich = c(m1 = 0, m2 = 0, m3 = 0, m4 = 0, m5 = 0), resid_frac = 0.5))
out6 <- abm(365, 1, add_pars = list(temp_C = 20, resid_enrich = c(m1 = 0, m2 = 0, m3 = 0, m4 = 0, m5 = 0), resid_frac = 0.1))

out1$methanogenbiomass <- out1$m1 + out1$m2 + out1$m3 + out1$m4 + out1$m5
out2$methanogenbiomass <- out2$m1 + out2$m2 + out2$m3 + out2$m4 + out2$m5
out3$methanogenbiomass <- out3$m1 + out3$m2 + out3$m3 + out3$m4 + out3$m5
out4$methanogenbiomass <- out4$m1 + out4$m2 + out4$m3 + out4$m4 + out4$m5
out5$methanogenbiomass <- out5$m1 + out5$m2 + out5$m3 + out5$m4 + out5$m5
out6$methanogenbiomass <- out6$m1 + out6$m2 + out6$m3 + out6$m4 + out6$m5


