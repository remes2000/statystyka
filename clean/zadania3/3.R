# install.packages("e1071")
# library(e1071)
# opcjonalny, do obliczenia kurtozy i współczynnika asymetrii

# Zmienna ilościowa, ciągła
awarie <- read.table("../data/awarie.txt", header = FALSE)

data.frame(
    cbind(
        liczebnosc = table(cut(awarie$V1, breaks = hist(awarie$V1, plot = FALSE)$breaks)),
        procent = prop.table(table(cut(awarie$V1, breaks = hist(awarie$V1, plot = FALSE)$breaks)))
    )
)

# Wykresy
hist(awarie$V1, 
     xlab = "Frequency", 
     main = "Rozkład empiryczny czasu bezawaryjnej pracy")

hist(awarie$V1, 
     xlab = "Czas bezawaryjnej pracy", 
     main = "Rozkład empiryczny czasu bezawaryjnej pracy",
     probability = TRUE, 
     col = "lightgreen")
lines(density(awarie$V1), col = "red", lwd = 2)

boxplot(awarie$V1, 
        ylab = "Czas bezawaryjnej pracy", 
        main = "Rozkład empiryczny czasu bezawaryjnej pracy")

# Średnia
mean(awarie$V1)
# Mediana
median(awarie$V1)
# Odchylenie standardowe
sd(awarie$V1)
# Współczynnik zmienności
sd(awarie$V1) / mean(awarie$V1) * 100
# Współczynnik asymetrii
sum((awarie$V1 - mean(awarie$V1))^3) / (length(awarie$V1) * sd(awarie$V1)^3)
# skewness(awarie$V1)
# Kurtoza
sum((awarie$V1 - mean(awarie$V1))^4) / (length(awarie$V1) * sd(awarie$V1)^4) - 3
# kurtosis(awarie$V1)
