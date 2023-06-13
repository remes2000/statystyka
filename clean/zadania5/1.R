data <- c(862, 870, 876, 866, 871, 865, 861, 873, 871, 872)
# alfa = 0.05
shapiro.test(data)
# p-value = 0.5549
# p-value > 0.05 a więc przyjmuje hipoteze ze rozklad jest normalny
# mi_0 = 870
# H0: mi = mi_0

estymator <- mean(data)
# 868.7 
# 868.7 < 870 czyli "less"

t.test(data, mu = 870, alternative = "less")
# p-value = 0.2137
# 0.2137 > O.05 więc przyjmuję hipotezę H0
# A więc średnia głębokosc to 870 metrow