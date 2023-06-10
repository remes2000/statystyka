# Zadanie 8
H0: p = 0.7
H1: p > 0.7
p_est <- 18 / 22

# test dla wskaznika struktury
prop.test(x = 18, n = 22, p = 0.7, alternative = "greater")
alpha <- 0.05

# brak podstaw do odrzucenia H0
# test dwumianowy
binom.test(x = 18, n = 22, p = 0.7, alternative = "greater")
