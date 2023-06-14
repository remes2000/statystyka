load("../data/Centrala.RData")

unique(Centrala$Liczba)
lambda_est <- mean(Centrala$Liczba)
p0 <- c(dpois(0:4, lambda_est), 1 - ppois(4, lambda_est))
# Ponizsza linijka liczy z bledem
chisq.test(table(Centrala$Liczba), p = p0)

# liczba stopni swobody = 6 - 1 - 1
1 - pchisq(1.3916, 4)

# 0.8456537 > 0.05 brak podstaw do odrzucenia H0
# a wiec rozklad Poissona jest poprawnym rozkladem