A <- c(78.2, 78.5, 75.6, 78.5, 78.5, 77.4, 76.6)
B <- c(76.1, 75.2, 75.8, 77.3, 77.3, 77.0, 74.4, 76.2, 73.5, 77.4)

# Próby są niezalezne wiec wykonam test T-studenta
# Załozenia:

# Normalność
shapiro.test(A) 
# 0.06833 > 0.05 Rozkład normlany
shapiro.test(B)
# 0.2559 > 0.05 Rozkład normalny

# Równość wariancji, sprawdzamy przez test F-Snedecora

# Liczymy wariancje
var(A)
# 1.304762
var(B)
# 1.764

# var(A) < var(B) wiec alternative = "LESS"

var.test(A, B, alternative = "less")

# p-value = 0.3684 > 0.05 a więc wariancje są równe

# Przeproawdzamy test T-studenta

mean(A)
# 77.61429
mean(B)
# 76.02

# mean(A) > mean(B) a więc alternative = "greater"

t.test(A, B, alternative = "greater", var.equal = TRUE)

# p-value = 0.01059 < 0.05 a więc odrzucamy H0 - czyli prawdziwa jest alternatywa, greater
# a więc to proszek A jest znacząco lepszy od proszku B

