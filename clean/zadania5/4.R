M <- c(171, 176, 179, 189, 176, 182, 173, 179, 184, 186, 189, 167, 177)
K <- c(161, 162, 163, 162, 166, 164, 168, 165, 168, 157, 161, 172)

# Próby są od siebie niezależne
# Normalność

shapiro.test(M)
# 0.8595 > 0.05 

shapiro.test(K)
# 0.9448 > 0.05

# Mamy rozkład normalny

# Równość wariancji

var(M)
# 45.74359
var(K)
# 16.08333

# 45.74 > 16.08 alternative = "greater"

var.test(M, K, alternative = "greater")

# 0.04689 < 0.05 a wiec odrzucamy H0, wariancje nie są równe
# Wykonujemy więc test Welcha

mean(M)
# 179.0769
mean(K)
# 164.0833

# mean(M) > mean(K) alternative = "greater"
t.test(M, K, alternative = "greater", var.equal = FALSE)

# p-value 6.929e-07
# 0.0000006929 < 0.05

# Odrzucamy H0, a więc średni wzrost mężczyzn jest znacznie większy od średniego wzrostu kobiet