H0: p1 = p2
H1: p1 ? p2

p1_est <- 20/120
p2_est <- 45 / 150

prop.test(x = c(20, 45), n = c(120, 150), alternative = "less")

# ordzucamy H0 na korzysc alternatywy po 0.008127 < 0.05 (alpha)
# wiec odrzucamy hipoteze