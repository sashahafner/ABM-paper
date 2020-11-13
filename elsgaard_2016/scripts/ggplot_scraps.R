# If we prefer more complex and less flexible. . .

p <- ggplot(dd, aes(temp2, log10(rate))) +
  geom_text(aes(x = temp2, y = log10(rate), label = t2)) +
  geom_segment(data = dc, aes(x = temp2[1] + 1, y = log10(rate[1]) - 0.03, xend = temp2[2] - 1, yend = log10(rate[2]) + 0.03), arrow = arrow(length = unit(0.2, "cm")), colour = '#F8766D') +
  geom_segment(data = d50, aes(x = temp2[1], y = log10(rate[1]) + 0.05, xend = temp2[2], yend = log10(rate[2]) - 0.06), arrow = arrow(length = unit(0.2, "cm")), colour = '#00BA38') +
  geom_segment(data = di, aes(x = temp2[2] - 1, y = log10(rate[2]), xend = temp2[1] + 1, yend = log10(rate[1])), arrow = arrow(length = unit(0.2, "cm")), colour = '#F8766D') +
  geom_segment(data = d20, aes(x = temp2[1], y = log10(rate[1]) + 0.05, xend = temp2[2], yend = log10(rate[2]) - 0.06), arrow = arrow(length = unit(0.2, "cm")), colour = '#00BA38') +
  theme(legend.position = 'none') +
  labs(x = expression('Incubation temperature '*(degree*C)),
       y = expression('Log'[10]~CH[4]~'production rate'~(g~g[VS]^'-1'~h^'-1')))
ggsave('els_arrows.png', p, height = 3, width = 3.2)



