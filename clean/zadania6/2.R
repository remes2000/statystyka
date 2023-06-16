# install.packages("car", dependencies = TRUE)
# install.packages("agricolae")
library(agricolae)
library(car)

eysenck <- read.table('http://ls.home.amu.edu.pl/data_sets/Eysenck.txt', dec=",", header = TRUE)

aggregate(eysenck$Wynik, 
          list(Instrukcja = eysenck$Instrukcja), 
          FUN = mean)

boxplot(Wynik ~ Instrukcja, data = eysenck)

# Test analizy wariancji
summary(aov(Wynik ~ Instrukcja, data = eysenck))
# Pr(>F) < 0.05 a więć odrzucamy H0
# Typ instrukcji ma istotny wpływ na badaną cechę zależną

# Założenie normalności błędów losowych
shapiro.test(lm(Wynik ~ Instrukcja, data = eysenck)$residuals)
# 0.3756 > 0.05 -> przyjmujemy H0, założenie spełnione

# Założenie równości wariancji
bartlett.test(Wynik ~ Instrukcja, data = eysenck)
# 0.1258 > 0.05
fligner.test(Wynik ~ Instrukcja, data = eysenck)
# 0.09923 > 0.05
leveneTest(Wynik ~ Instrukcja, data = eysenck)
# 0.07072 > 0.05
leveneTest(Wynik ~ Instrukcja, data = eysenck, center = "mean")
# 0.106 > 0.05

# Założenie spełnione

# Testy Post-Hoc
pairwise.t.test(eysenck$Wynik, eysenck$Instrukcja, data = eysenck)

model_aov <- aov(Wynik ~ Instrukcja, data = eysenck)
TukeyHSD(model_aov)
HSD.test(model_aov, "Instrukcja", console = TRUE)
SNK.test(model_aov, "Instrukcja", console = TRUE)
LSD.test(model_aov, "Instrukcja", p.adj = "holm", console = TRUE)
scheffe.test(model_aov, "Instrukcja", console = TRUE)
