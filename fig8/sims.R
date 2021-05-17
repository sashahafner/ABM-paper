
# Part a

out11 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*0.5, resid_frac = 0.1))
out12 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*0.6, resid_frac = 0.1))
out13 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*0.7, resid_frac = 0.1))
out14 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*0.8, resid_frac = 0.1))
out15 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*0.9, resid_frac = 0.1))
out16 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02, resid_frac = 0.1))
out17 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*1.1, resid_frac = 0.1))
out18 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*1.2, resid_frac = 0.1))
out19 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*1.3, resid_frac = 0.1))
out20 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*1.4, resid_frac = 0.1))
out21 <- abm(730, 1, add_pars = list(temp_C = 20, alpha_opt = 0.02*1.5, resid_frac = 0.1))

x_vector <- c(-50,-40,-30,-20,-10,0,10,20,30,40,50)

p1<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p2<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p3<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p4<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p5<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p6<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p7<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p8<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p9<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p10<-(tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p11<-(tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

alpha_opt_vector <- c(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11)

# Sp sensitivity
out11 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*0.5, resid_frac = 0.1))
out12 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*0.6, resid_frac = 0.1))
out13 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*0.7, resid_frac = 0.1))
out14 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*0.8, resid_frac = 0.1))
out15 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*0.9, resid_frac = 0.1))
out16 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65, resid_frac = 0.1))
out17 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*1.1, resid_frac = 0.1))
out18 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*1.2, resid_frac = 0.1))
out19 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*1.3, resid_frac = 0.1))
out20 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*1.4, resid_frac = 0.1))
out21 <- abm(730, 1, add_pars = list(temp_C = 20, conc_fresh.Sp = 65*1.5, resid_frac = 0.1))

p11<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p12<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p13<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p14<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p15<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p16<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p17<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p18<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p19<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p20<- (tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p21<- (tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

Sp_vector = c(p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21)

# qhat sensitivity
out11 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 0.5*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out12 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 0.6*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out13 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 0.7*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out14 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 0.8*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out15 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 0.9*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out16 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 1*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out17 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 1.1*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out18 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 1.2*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out19 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 1.3*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out20 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 1.4*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))
out21 <- abm(730, 1, add_pars = list(temp_C = 20, qhat_opt = 1.5*c(m1 = 3.6, m2 = 5.6 , m3 = 7.2, m4 = 8, m5 = 8), resid_frac = 0.1))

p22<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p23<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p24<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p25<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p26<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p27<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p28<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p29<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p30<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p31<- (tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p32<- (tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

qhat_vector = c(p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32)

#Temperature
out11 <- abm(730, 1, add_pars = list(temp_C = 5.))
out12 <- abm(730, 1, add_pars = list(temp_C = 8.))
out13 <- abm(730, 1, add_pars = list(temp_C = 11))
out14 <- abm(730, 1, add_pars = list(temp_C = 14))
out15 <- abm(730, 1, add_pars = list(temp_C = 17))
out16 <- abm(730, 1, add_pars = list(temp_C = 20))
out17 <- abm(730, 1, add_pars = list(temp_C = 23))
out18 <- abm(730, 1, add_pars = list(temp_C = 26))
out19 <- abm(730, 1, add_pars = list(temp_C = 29))
out20 <- abm(730, 1, add_pars = list(temp_C = 32))
out21 <- abm(730, 1, add_pars = list(temp_C = 35))

p33<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p34<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p35<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p36<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p37<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p38<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p39<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p40<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p41<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p42<- (tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p43<- (tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

Temperature_vector = c(p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43)
x_vector_temperature = c(-11.5, -9.2, -6.9, -4.6, -2.3, 0, 2.3, 4.6, 6.9, 9.2, 11.5)
## yield sensitivity
out11 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 0.5*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out12 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 0.6*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out13 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 0.7*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out14 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 0.8*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out15 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 0.9*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out16 <- abm(730, 1, add_pars = list(temp_C = 20, yield = c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out17 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 1.1*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out18 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 1.2*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out19 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 1.3*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out20 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 1.4*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))
out21 <- abm(730, 1, add_pars = list(temp_C = 20, yield = 1.5*c(m1 = 0.04, m2 = 0.04, m3 = 0.04, m4 = 0.04, m5 = 0.04)))

x_vector <- c(-50,-40,-30,-20,-10,0,10,20,30,40,50)

p44<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p45<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p46<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p47<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p48<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p49<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p50<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p51<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p52<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p53<-(tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p54<-(tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

yield_vector <- c(p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54)

#residual fraction
out11 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.5*0.1))
out12 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.6*0.1))
out13 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.7*0.1))
out14 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.8*0.1))
out15 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.9*0.1))
out16 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 1*0.1))
out17 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 1.1*0.1))
out18 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 1.2*0.1))
out19 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 1.3*0.1))
out20 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 1.4*0.1))
out21 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 1.5*0.1))

p55<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p56<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p57<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p58<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p59<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p60<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p61<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p62<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p63<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p64<- (tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p65<- (tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

residual_fraction_vector <- c(p55,p56,p57,p58,p59,p60,p61,p62,p63,p64,p65)

#methanogen enrichment
out11 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 0.5*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out12 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 0.6*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out13 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 0.7*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out14 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 0.8*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out15 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 0.9*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out16 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out17 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 1.1*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out18 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 1.2*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out19 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 1.3*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out20 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 1.4*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))
out21 <- abm(730, 1, add_pars = list(temp_C = 20, resid_frac = 0.1, resid_enrich = 1.5*c(m1 = 2, m2 = 2, m3 = 2, p1 = 2, p2 = 2, sr1 = 2)))


p66<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p67<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p68<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p69<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p70<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p71<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p72<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p73<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p74<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p75<- (tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p76<- (tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

methanogen_enrich_vector = c(p66,p67,p68,p69,p70,p71,p72,p73,p74,p75,p76)

out11 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 0.5*c(default = 0.001, m3 = 0.01),
                                     xa_init = 0.5*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out12 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 0.6*c(default = 0.001, m3 = 0.01),
                                     xa_init = 0.6*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out13 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 0.7*c(default = 0.001, m3 = 0.01),
                                     xa_init = 0.7*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out14 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 0.8*c(default = 0.001, m3 = 0.01),
                                     xa_init = 0.8*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out15 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 0.9*c(default = 0.001, m3 = 0.01),
                                     xa_init = 0.9*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out16 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = c(default = 0.001, m3 = 0.01),
                                     xa_init = c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out17 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 1.1*c(default = 0.001, m3 = 0.01),
                                     xa_init = 1.1*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out18 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 1.2*c(default = 0.001, m3 = 0.01),
                                     xa_init = 1.2*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out19 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 1.3*c(default = 0.001, m3 = 0.01),
                                     xa_init = 1.3*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out20 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 1.4*c(default = 0.001, m3 = 0.01),
                                     xa_init = 1.4*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))
out21 <- abm(730, 1, add_pars = list(temp_C = 20, xa_fresh = 1.5*c(default = 0.001, m3 = 0.01),
                                     xa_init = 1.5*c(m1 = 0.01, m2 = 0.005, m3 = 0.005, m4 = 0.005, m5 = 0.001)))

p77<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p78<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p79<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p80<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p81<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p82<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p83<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p84<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p85<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p86<- (tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p87<- (tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

initial_vector = c(p77, p78, p79, p80, p81, p82, p83, p84, p85, p86, p87)

out11 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 0.5*c(all = 1)))
out12 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 0.6*c(all = 1)))
out13 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 0.7*c(all = 1)))
out14 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 0.8*c(all = 1)))
out15 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 0.9*c(all = 1)))
out16 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = c(all = 1)))
out17 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 1.1*c(all = 1)))
out18 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 1.2*c(all = 1)))
out19 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 1.3*c(all = 1)))
out20 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 1.4*c(all = 1)))
out21 <- abm(730, 1, add_pars = list(temp_C = 20, ks_coefficient = 1.5*c(all = 1)))

p88<- (tail(out11$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p89<- (tail(out12$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p90<- (tail(out13$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p91<- (tail(out14$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p92<- (tail(out15$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p93<- (tail(out16$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p94<- (tail(out17$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p95<- (tail(out18$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p96<- (tail(out19$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p97<- (tail(out20$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100
p98<- (tail(out21$CH4_emis_cum, n=1)-tail(out16$CH4_emis_cum, n=1))/tail(out16$CH4_emis_cum, n=1)*100

ks_vector = c(p88, p89, p90, p91, p92, p93, p94, p95, p96, p97, p98)
