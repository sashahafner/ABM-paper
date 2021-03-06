# Generate data for plots

library(ABM)

# Data from Elsgaard
T_elsgaard <- c(5.1, 6.7, 8.3, 9.8, 11.4, 13.0, 14.6, 16.1, 17.7, 19.3, 20.9, 22.4, 25.6, 28.7, 31.9, 35.0, 38.2, 41.3, 46.0, 50.7)
CH4_elsgaard <- c(0.00212, 0.00309, 0.00413, 0.00500, 0.00627, 0.00810, 0.00945, 0.01185, 0.01386, 0.01734, 0.02119, 0.02404, 0.03428, 0.04679, 0.06254, 0.07014, 0.06826, 0.05963, 0.02515, 0.00993)

# Set simulation parameters
Temp_int <- seq(from = 5, to = 52, by = 0.5)
t_simulation <- 10 #for (t_simulation in  seq(from = 2, to = 10, by = 2)){

# m1 = methanolobus psychrophilus, m2 = methanosarcina segidelidi, m3 = methanobrevibacter spp./ corpusculum spp., m4 = unknown, m5 = methanosarcina thermophila
grp_pars4 <- list(
  grps = c('m1','m2','m3','m4','m5'),
  yield = c(default = 0.04),
  xa_fresh = c(all = 0.001),
  xa_init = 1*c(m1 = 0.02, m2 = 0.02, m3 = 0.022, m4 = 0.01, m5 = 0.002),
  decay_rate = c(all = 0.02),
  ks_coefficient = c(default = 1.0),
  resid_enrich = c(all = 0),
  qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
  T_opt = c(m1 = 18, m2 = 28, m3 = 36, m4 = 43.75, m5 = 55),
  T_min = c(m1 = 0, m2 = 8, m3 = 15, m4 = 26.25, m5 = 30),
  T_max = c(m1 = 25, m2 = 38, m3 = 45, m4 = 51.25, m5 = 60),
  ki_NH3_min = c(all = 0.015),
  ki_NH3_max = c(all = 0.132),
  ki_NH4_min = c(all = 2.714),
  ki_NH4_max = c(all = 4.765),
  pH_upr = c(all = 8),
  pH_lwr = c(all = 6.5))

CH4_5 <- c() # all together

for (i in Temp_int){
  out1 <- abm(t_simulation, 1, grp_pars = grp_pars4, 
              add_pars = list(temp_C = i, alpha_T_max = 333, alpha_T_opt = 323, alpha_T_opt = 0.02, slurry_mass = 1, area = 0, slurry_prod_rate = 0), 
              value = 'summ')
  CH4_5 <- c(CH4_5, out1['CH4_emis_VS'] * 1000 / t_simulation / 24)
}


# Taking only three of the groups
grp_pars4 <- list(
  grps = c('m1','m3','m4'),
  yield = c(default = 0.04),
  xa_fresh = c(all = 0.001),
  xa_init = 1*c(m1 = 0.02, m2 = 0.02, m3 = 0.022, m4 = 0.01, m5 = 0.002),
  decay_rate = c(all = 0.02),
  ks_coefficient = c(default = 1.0),
  resid_enrich = c(all = 0),
  qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
  T_opt = c(m1 = 18, m2 = 28, m3 = 36, m4 = 43.75, m5 = 55),
  T_min = c(m1 = 0, m2 = 8, m3 = 15, m4 = 26.25, m5 = 30),
  T_max = c(m1 = 25, m2 = 38, m3 = 45, m4 = 51.25, m5 = 60),
  ki_NH3_min = c(all = 0.015),
  ki_NH3_max = c(all = 0.132),
  ki_NH4_min = c(all = 2.714),
  ki_NH4_max = c(all = 4.765),
  pH_upr = c(all = 8),
  pH_lwr = c(all = 6.5))

CH4_3 <- c() # all together

for (i in Temp_int){
  out1 <- abm(t_simulation, 1, grp_pars = grp_pars4, 
              add_pars = list(temp_C = i, alpha_T_max = 333, alpha_T_opt = 323, alpha_T_opt = 0.02, slurry_mass = 1, area = 0, slurry_prod_rate = 0), 
              value = 'summ')
  CH4_3 <- c(CH4_3,out1['CH4_emis_VS']*1000/t_simulation/24)
}


grp_pars4 <- list(
  grps = c('m1'),
  yield = c(default = 0.04),
  xa_fresh = c(all = 0.001),
  xa_init = 1*c(m1 = 0.02, m2 = 0.02, m3 = 0.022, m4 = 0.01, m5 = 0.002),
  decay_rate = c(all = 0.02),
  ks_coefficient = c(default = 1.0),
  resid_enrich = c(all = 0),
  qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
  T_opt = c(m1 = 18, m2 = 28, m3 = 36, m4 = 43.75, m5 = 55),
  T_min = c(m1 = 0, m2 = 8, m3 = 15, m4 = 26.25, m5 = 30),
  T_max = c(m1 = 25, m2 = 38, m3 = 45, m4 = 51.25, m5 = 60),
  ki_NH3_min = c(all = 0.015),
  ki_NH3_max = c(all = 0.132),
  ki_NH4_min = c(all = 2.714),
  ki_NH4_max = c(all = 4.765),
  pH_upr = c(all = 8),
  pH_lwr = c(all = 6.5))

CH4_5_m1 <- c() # all together

for (i in Temp_int){
  out1 <- abm(t_simulation, 1, grp_pars = grp_pars4, 
              add_pars = list(temp_C = i, alpha_T_max = 333, alpha_T_opt = 323, alpha_T_opt = 0.02, slurry_mass = 1, area = 0, slurry_prod_rate = 0), 
              value = 'summ')
  CH4_5_m1 <- c(CH4_5_m1,out1['CH4_emis_VS']*1000/t_simulation/24)
}


grp_pars4 <- list(
  grps = c('m2'),
  yield = c(default = 0.04),
  xa_fresh = c(all = 0.001),
  xa_init = 1*c(m1 = 0.02, m2 = 0.02, m3 = 0.022, m4 = 0.01, m5 = 0.002),
  decay_rate = c(all = 0.02),
  ks_coefficient = c(default = 1.0),
  resid_enrich = c(all = 0),
  qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
  T_opt = c(m1 = 18, m2 = 28, m3 = 36, m4 = 43.75, m5 = 55),
  T_min = c(m1 = 0, m2 = 8, m3 = 15, m4 = 26.25, m5 = 30),
  T_max = c(m1 = 25, m2 = 38, m3 = 45, m4 = 51.25, m5 = 60),
  ki_NH3_min = c(all = 0.015),
  ki_NH3_max = c(all = 0.132),
  ki_NH4_min = c(all = 2.714),
  ki_NH4_max = c(all = 4.765),
  pH_upr = c(all = 8),
  pH_lwr = c(all = 6.5))

CH4_5_m2 <- c() # all together

for (i in Temp_int){
  out1 <- abm(t_simulation, 1, grp_pars = grp_pars4, 
              add_pars = list(temp_C = i, alpha_T_max = 333, alpha_T_opt = 323, alpha_T_opt = 0.02, slurry_mass = 1, area = 0, slurry_prod_rate = 0), 
              value = 'summ')
  CH4_5_m2 <- c(CH4_5_m2,out1['CH4_emis_VS']*1000/t_simulation/24)
}

grp_pars4 <- list(
  grps = c('m3'),
  yield = c(default = 0.04),
  xa_fresh = c(all = 0.001),
  xa_init = 1*c(m1 = 0.02, m2 = 0.02, m3 = 0.022, m4 = 0.01, m5 = 0.002),
  decay_rate = c(all = 0.02),
  ks_coefficient = c(default = 1.0),
  resid_enrich = c(all = 0),
  qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
  T_opt = c(m1 = 18, m2 = 28, m3 = 36, m4 = 43.75, m5 = 55),
  T_min = c(m1 = 0, m2 = 8, m3 = 15, m4 = 26.25, m5 = 30),
  T_max = c(m1 = 25, m2 = 38, m3 = 45, m4 = 51.25, m5 = 60),
  ki_NH3_min = c(all = 0.015),
  ki_NH3_max = c(all = 0.132),
  ki_NH4_min = c(all = 2.714),
  ki_NH4_max = c(all = 4.765),
  pH_upr = c(all = 8),
  pH_lwr = c(all = 6.5))

CH4_5_m3 <- c() # all together

for (i in Temp_int){
  out1 <- abm(t_simulation, 1, grp_pars = grp_pars4, 
              add_pars = list(temp_C = i, alpha_T_max = 333, alpha_T_opt = 323, alpha_T_opt = 0.02, slurry_mass = 1, area = 0, slurry_prod_rate = 0), 
              value = 'summ')
  CH4_5_m3 <- c(CH4_5_m3,out1['CH4_emis_VS']*1000/t_simulation/24)
}

grp_pars4 <- list(
  grps = c('m4'),
  yield = c(default = 0.04),
  xa_fresh = c(all = 0.001),
  xa_init = 1*c(m1 = 0.02, m2 = 0.02, m3 = 0.022, m4 = 0.01, m5 = 0.002),
  decay_rate = c(all = 0.02),
  ks_coefficient = c(default = 1.0),
  resid_enrich = c(all = 0),
  qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
  T_opt = c(m1 = 18, m2 = 28, m3 = 36, m4 = 43.75, m5 = 55),
  T_min = c(m1 = 0, m2 = 8, m3 = 15, m4 = 26.25, m5 = 30),
  T_max = c(m1 = 25, m2 = 38, m3 = 45, m4 = 51.25, m5 = 60),
  ki_NH3_min = c(all = 0.015),
  ki_NH3_max = c(all = 0.132),
  ki_NH4_min = c(all = 2.714),
  ki_NH4_max = c(all = 4.765),
  pH_upr = c(all = 8),
  pH_lwr = c(all = 6.5))

CH4_5_m4 <- c() # all together

for (i in Temp_int){
  out1 <- abm(t_simulation, 1, grp_pars = grp_pars4, 
              add_pars = list(temp_C = i, alpha_T_max = 333, alpha_T_opt = 323, alpha_T_opt = 0.02, slurry_mass = 1, area = 0, slurry_prod_rate = 0), 
              value = 'summ')
  CH4_5_m4 <- c(CH4_5_m4,out1['CH4_emis_VS']*1000/t_simulation/24)
}

grp_pars4 <- list(
  grps = c('m5'),
  yield = c(default = 0.04),
  xa_fresh = c(all = 0.001),
  xa_init = 1*c(m1 = 0.02, m2 = 0.02, m3 = 0.022, m4 = 0.01, m5 = 0.002),
  decay_rate = c(all = 0.02),
  ks_coefficient = c(default = 1.0),
  resid_enrich = c(all = 0),
  qhat_opt = c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8),
  T_opt = c(m1 = 18, m2 = 28, m3 = 36, m4 = 43.75, m5 = 55),
  T_min = c(m1 = 0, m2 = 8, m3 = 15, m4 = 26.25, m5 = 30),
  T_max = c(m1 = 25, m2 = 38, m3 = 45, m4 = 51.25, m5 = 60),
  ki_NH3_min = c(all = 0.015),
  ki_NH3_max = c(all = 0.132),
  ki_NH4_min = c(all = 2.714),
  ki_NH4_max = c(all = 4.765),
  pH_upr = c(all = 8),
  pH_lwr = c(all = 6.5))

CH4_5_m5 <- c() # all together

for (i in Temp_int){
  out1 <- abm(t_simulation, 1, grp_pars = grp_pars4, 
              add_pars = list(temp_C = i, alpha_T_max = 333, alpha_T_opt = 323, alpha_T_opt = 0.02, slurry_mass = 1, area = 0, slurry_prod_rate = 0), 
              value = 'summ')
  CH4_5_m5 <- c(CH4_5_m5,out1['CH4_emis_VS']*1000/t_simulation/24)
}

#------------------------------------------------------------------------------------------------
# Generate short vs. long figure

# Plot of short- vs. long-term effects

# Temperature data
temp_dat <- data.frame(time = 100 + c(-1, 0, 100), temp_C = c(37, 52, 18)) 

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



#------------------------------------------------------------------------------------------------
