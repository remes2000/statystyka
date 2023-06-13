# ----- ===== ZADANIE 1 ===== -----
# Jest to zmienna jakościowa porządkowa
# Możliwe wartośći to {a, b, c, d, e}

ankieta <- read.table("../data/ankieta.txt", header = TRUE)

# Szereg rozdzielczy
# Przedstaw rozkład empiryczny zmiennej wynik za pomocą szeregu rozdzielczego.
data.frame(
    cbind(liczebnosc = table(ankieta$wynik),
    procent = prop.table(table(ankieta$wynik)))
)

# Przedstaw rozkład empiryczny zmiennej wynik tylko dla osób z wykształceniem podstawowym 
# za pomocą szeregu rozdzielczego.
data.frame(cbind(
  liczebnosc = table(subset(ankieta, szkola=='p')['wynik']),
  procnet = prop.table(table(subset(ankieta, szkola=='p')['wynik']))
))

# Wykresy
barplot(
  table(ankieta['wynik']),
  xlab = 'Odpowiedzi',
  ylab = 'Liczebność',
  main = 'Rozkład empiryczny zmiennej wynik',
  col = rainbow(5)
)

barplot(
  prop.table(table(ankieta['wynik'])),
  xlab = 'Odpowiedzi',
  ylab = 'Prawdopodobieństwo',
  main = 'Rozkład empiryczny zmiennej wynik',
  col = rainbow(5)
)

pie(table(ankieta['wynik']))

# Oba obok siebie
barplot(
  table(ankieta$wynik, ankieta$plec),
  beside = TRUE
)