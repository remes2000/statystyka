# Próby są od siebie zależne
# Sprawdzamy normalność
A <- c(84, 87, 87, 90, 90, 90, 90, 93, 93, 96)
B <- c(89, 92, 98, 95, 95, 92, 95, 92, 98, 101)

shapiro.test(A)
# 0.7026 > 0.05

shapiro.test(B)
# 0.6915 > 0.05

# Mamy rozkład normalny

mean(A)
# 90
mean(B)
# 94.7
# 90 < 94.7 a wiec alternative = less

t.test(A, B, alternative = "less", paired = TRUE)

# 0.0003787 
# Odrzucamy H0, a więc film znacznie poprawia stosunek do szkół publicznych