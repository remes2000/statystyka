# Ile prob: 1
# Obserwacji: 150
# Badamy kolor, cecha: kolor
# Cecha dyskretna, jakosciowa
# Test Pearsona

# DO DOMU NA BAZIE PRZYKLADU Z KURWA NIE WIEM CZYM ROZKLAD Z X^2 TO BYL
# Proporcje
2:5:3
# Propocje trzeba przerobic na prawdopodobienstwo
x <- c(2, 5, 3)
p0 <- x / sum(x)
chisq.test(x = c(38, 72, 40), p = p0)
# p-value = 0.2455 
# p value wieksze od alpha (0.05)
# brak podstaw do odrzucenia H0 a wiec p = p0