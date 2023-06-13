hamulce <- read.table("http://ls.home.amu.edu.pl/data_sets/hamulce.txt", dec = ",")

# Rysujemy histogram
hist(hamulce$V1, 
     xlab = "Czas bezawaryjnej pracy", 
     main = "Rozkład empiryczny czasu bezawaryjnej pracy",
     probability = TRUE, 
     col = "lightgreen")
lines(density(hamulce$V1), col = "red", lwd = 2)

# Estymatory
s <- sd(hamulce$V1)
enw <- sqrt(sum((hamulce$V1 - mean(hamulce$V1))^2) / length(hamulce$V1))
n <- length(hamulce$V1)
enmw <- sqrt((n-1) / 2) * (gamma((n-1) / 2)/gamma(n/2)) * sd(hamulce$V1)

# todo narysować wykres, jak?