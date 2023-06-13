# Zmienna ilościowa, dyskretna 
# Wartości od 0 do inf
# Proponuje rozkład Poissona
load("../data/Centrala.RData")

# Estymator
p_est <- mean(Centrala$Liczba)

empiryczny <- c(prop.table(table(Centrala$Liczba)))
teoretyczny <- dpois(sort(unique(Centrala$Liczba)), lambda = p_est)

counts <- matrix(c(empiryczny, teoretyczny), nrow = 2, byrow = TRUE)
rownames(counts) <- c("empiryczny", "teoretyczny")
colnames(counts) <- sort(unique(Centrala$Liczba))
counts

# Wykres
barplot(counts, beside = TRUE, col = c("red", "blue"))

# Prawdopodobieństwo empiryczne ze licza zgloszen jest mniejsza niz 4
# Empiryczne
sum(Centrala$Liczba < 4) / length(Centrala$Liczba)

# Teoretyczne
ppois(3, p_est)

# Wyznacz (trzema metodami) przedział ufności dla parametru rozkładu teoretycznego.
# install.packages("EnvStats")
library(EnvStats)

EnvStats::epois(Centrala$Liczba, ci = TRUE, ci.method = "exact")$interval$limits
EnvStats::epois(Centrala$Liczba, ci = TRUE, ci.method="pearson.hartley.approx")$interval$limits
EnvStats::epois(Centrala$Liczba, ci = TRUE, ci.method="normal.approx")$interval$limits

