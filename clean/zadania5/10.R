# Dwie próby zależne 0/1 
# Test McNemary

data <- matrix(c(794, 86, 150, 570), nrow = 2) # pisane kolumnami
mcnemar.test(data)

# p-value < 0.05 - odrzucamy hipotezę H0
# Różnica jest istotna