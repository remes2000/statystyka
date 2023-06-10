# Zadanie 1
x <- c(862, 870, 876, 866, 871, 865, 861, 873, 871, 872)
# założenie normalności?
hist(x)
shapiro.test(x)
p_value <- 0.5459
alpha <- 0.05  # poziom istotności
if (p_value <= alpha) {
  print("odrzucamy H0 na korzyść H1")
} else {
  print("brak podstaw do odrzucenia H0")
}
# H0: noraność
# H0: mu = 870
# H1: mu < 870
mean(x)
t.test(x, mu = 870, alernative = "less")

wilcox.test(x, m = 870, alternative = "greater")