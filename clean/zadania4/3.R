awarie <- read.table("../data/awarie.txt", header = FALSE)

# Wartości od 0 do nieskończoności, liczba całkowita
# Zmienna ilościowa ciągła

# Rysujemy histogram
hist(awarie$V1, 
     xlab = "Czas bezawaryjnej pracy", 
     main = "Rozkład empiryczny czasu bezawaryjnej pracy",
     probability = TRUE, 
     col = "lightgreen")
lines(density(awarie$V1), col = "red", lwd = 2)

# Sugeruje rozkład teoretyczny wykładniczy
# Estymator
enw <- 1/mean(awarie$V1)

hist(awarie$V1, 
    xlab = "Czas bezawaryjnej pracy", 
     main = "Rozkład empiryczny czasu bezawaryjnej pracy",
     probability = TRUE, 
     col = "lightgreen")
lines(density(awarie$V1), col = "red", lwd = 2)
curve(dexp(x, rate = enw), col = "blue", add = TRUE, lwd = 2)

# Oblicz empiryczne i teoretyczne prawdopodobieństwo, że czas bezawaryjnej pracy zawarty jest w 
# przedziale [1000, 1500].

# empiryczne
sum(awarie$V1 >= 1000 & awarie$V1 <= 1500) / length(awarie$V1)
# teoretyczne
pexp(1500, rate = enw) - pexp(1000, rate = enw)

# przedziały ufności
# install.packages("EnvStats")
# Krystian inaczej policzył do eexp - zobacz u niego
library(EnvStats)
EnvStats::eexp(awarie$V1, ci = TRUE)$interval$limits

# Oblicz wartość ENW i granice przedziału ufności dla wartości oczekiwanej i wariancji rozkładu teoretycznego.

# todo reszta podpunktów i zadań