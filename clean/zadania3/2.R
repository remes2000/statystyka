# ----- ===== ZADANIE 2 ===== -----
# Zmienna ilościowa, dyskretna, wartości od 0 do inf
load("../data/Centrala.RData")

# Szereg rozdzielczy
# Przedstaw rozkład empiryczny zmiennej wynik za pomocą szeregu rozdzielczego.
data.frame(
    cbind(liczebnosc = table(Centrala$Liczba),
    procent = prop.table(table(Centrala$Liczba)))
)

# Wykresy
barplot(
  table(Centrala['Liczba']),
  xlab = 'Odpowiedzi',
  ylab = 'Liczebność',
  main = 'Rozkład empiryczny zmiennej wynik',
  col = rainbow(5)
)

barplot(
  prop.table(table(Centrala['Liczba'])),
  xlab = 'Odpowiedzi',
  ylab = 'Prawdopodobieństwo',
  main = 'Rozkład empiryczny zmiennej wynik',
  col = rainbow(5)
)

pie(table(Centrala['Liczba']))

# Średnia zgłoszeń
mean(Centrala$Liczba)
# Mediana zgłoszeń
median(Centrala$Liczba)
# Odchylenie standardowe
sd(Centrala$Liczba)
# Współczynnik zmienności
sd(Centrala$Liczba) / mean(Centrala$Liczba) * 100
