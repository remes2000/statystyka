load("/home/students/s462084/statystyka/Centrala.RData")
estymator <- mean(Centrala$Liczba)

empiryczny <- c(prop.table(table(Centrala$Liczba)))
teoretyczny <- dpois(sort(unique(Centrala$Liczba)), lambda = estymator)

counts <- matrix(c(empiryczny, teoretyczny), nrow = 2, byrow = TRUE)
rownames(counts) <- c("empiryczny", "teoretyczny")
colnames(counts) <- sort(unique(Centrala$Liczba))

counts

barplot(counts, beside = TRUE, col = c("red", "blue"))

# install.packages("EnvStats")
library(EnvStats)

EnvStats::epois(Centrala$Liczba, ci = TRUE)$interval$limits
# (1.561968, 1.932765)