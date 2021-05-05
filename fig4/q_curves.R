
# Create qhat function
qhat <- function(temp_C, qhat_opt, T_opt, T_min, T_max) {
  temp_C[temp_C < T_min] <- NA
  temp_C[temp_C > T_max] <- NA
  qhat_opt * ((temp_C - T_max) * (temp_C - T_min)^2) / 
    ((T_opt - T_min) * ((T_opt - T_min) * (temp_C - T_opt) - 
                          (T_opt - T_max) * (T_opt + T_min - 2*temp_C)))
}

# Set parameter values
temp_C <- 0:600/10
qhat1 <- qhat(temp_C, qhat_opt = 3.6, T_opt = 18, T_min = 0, T_max = 25)
qhat2 <- qhat(temp_C, qhat_opt = 5.6, T_opt = 28, T_min = 8, T_max = 38)
qhat3 <- qhat(temp_C, qhat_opt = 7.2, T_opt = 36, T_min = 15, T_max = 45)
qhat4 <- qhat(temp_C, qhat_opt = 8, T_opt = 43.75, T_min = 26.25, T_max = 51.25)
qhat5 <- qhat(temp_C, qhat_opt = 8, T_opt = 55, T_min = 30, T_max = 60)
