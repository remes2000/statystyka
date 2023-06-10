ankieta <- read.table("ankieta.txt", header=TRUE)

data.frame(cbind(
  liczebnosc = table(ankieta['wynik']),
  procent = prop.table(table(ankieta['wynik']))
))

data.frame(cbind(
  liczebnosc = table(subset(ankieta, szkola=='p')['wynik']),
  procnet = prop.table(table(subset(ankieta, szkola=='p')['wynik']))
))

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

barplot(
  table(subset(ankieta, plec=='k')['wynik']),
  xlab = 'k',
  ylab = 'Liczebność',
  col = rainbow(5)
)
barplot(
  table(subset(ankieta, plec=='m')['wynik']),
  xlab = 'm',
  ylab = 'Liczebność',
  col = rainbow(5)
)
table(subset(ankieta, plec=='k')['wynik'])
table(subset(ankieta, plec=='m')['wynik'])
      
barplot(
  table(ankieta$wynik, ankieta$plec),
  beside = TRUE
)

