#eysenck <- read.table('http://ls.home.amu.edu.pl/data_sets/Eysenck.txt', dec=",", header = TRUE)
#eysenck[-1]
#aggregate(Wynik ~ Instrukcja, data = eysenck, mean)
#boxplot(Wynik ~ Instrukcja, data = eysenck)

dane <- read.table('http://ls.home.amu.edu.pl/data_sets/Eysenck.txt', dec=",", header = TRUE)
dane$Nr <- NULL
head(dane)
dane$Instrukcja <= as.factor(dane$Instrukcja)
head(dane)

aggregate(dane$Wynik, list(dane$Instrukcja), FUN = mean)
boxplot(Wynik ~ Instrukcja, data = dane)
# ANOVA
#model <- anov(Wynik ~ Instrukcja, data = dane)
#summary(model)

# zalozenia
# normalnosc
shapiro.test(lm(Wynik ~ Instrukcja ,data = dane)).residuals()
# rownosc wariancji
bartlett.test(Wynik ~ Instrukcja, data = dane)
# post hoc (je sie robi tylko jak odrzucimy kazde h0)

# post hoc
pairwise.t.test(dane$Wynik, dane$Instrukcja)

