load("/Users/michalnieruchalski/Documents/projects/statystyka/poligon/data/Centrala.RData")
# Rozkład poissona

p_est <- mean(Centrala$Liczba)

empiryczny <- c(prop.table(table(Centrala$Liczba)))
teoretyczny <- dpois(sort(unique(Centrala$Liczba)), lambda = p_est)

counts <- matrix(c(empiryczny, teoretyczny), nrow = 2, byrow = TRUE)
rownames(counts) <- c("empiryczny", "teoretyczny")
colnames(counts) <- sort(unique(Centrala$Liczba))
counts