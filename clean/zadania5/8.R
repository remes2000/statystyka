# jedna próba 22 obserwacje


prop.test(x = 18, n = 22, p = 0.7, alternative = "greater")

# greater bo 18/22 = 0.81
# no i 0.81 > 0.7

# p-value 0.1643
# 0.1643 > 0.05
# Przyjmujemy H0 ze prawdopodobieństwo wystąpienia puryn jest równe 70%

binom.test(x = 18, n = 22, p = 0.7, alternative = "greater")
# 0.1645 > 0.05