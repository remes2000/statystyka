Same <- data.frame(data=c(25,26,17,15,14,17,14,20,11,21), context = "Same")
Different <- data.frame(data=c(11,21,9,6,7,14,12,4,7,19), context = "Different")
Imagery <- data.frame(data=c(14,15,29,10,12,22,14,20,22,12), context = "Imagery")
Photo <- data.frame(data=c(25,15,23,21,18,24,14,27,12,11), context = "Photo")
Placebo <- data.frame(data=c(8,20,10,7,15,7,1,17,11,4), context = "Placebo")
Smith <- data.frame(rbind(Same,Different,Imagery,Photo,Placebo))

# Średnie w obu grupach + wykres
aggregate(Smith$data, 
          list(DOSE = Smith$context), 
          FUN = mean)
boxplot(data ~ context, data = Smith)

# Wykonaj test analizy wariancji w celu sprawdzenia, 
# czy liczba zapamiętanych słów zależy od kontekstu sprawdzania wiedzy.

# aov - analysis of variance
summary(aov(data ~ context, data = Smith))

# Pr(>F) - to jest p wartość
# 0.00112 < 0.05 - odzrucamy H0 a więc przynajmniej dwie średnie są od siebie istotnie różne

# Sprawdzanie założeń modelu jednoczynnikowej analizy wariancji

# Normalność błędów losowych
shapiro.test(lm(data ~ context, data = Smith)$residuals)

# 0.05636 > 0.05 a więc rozkład jest normalny, brak podstaw do odrzucenia H0

# Równość wariancji
bartlett.test(data ~ context, data = Smith)
# 0.9818 > 0.05 H0 akceptujemy, równość wariancji

fligner.test(data ~ context, data = Smith)
# 0.976 > 0.05 H0 akceptujemy, równość wariancji

# install.packages("car", dependencies = TRUE)
library(car)
leveneTest(data ~ context, data = Smith)
# 0.9551 > 0.05 H0 akceptujemy, równość wariancji

leveneTest(data ~ context, data = Smith, center = "mean")
# 0.9281 > 0.05 H0 akceptujemy, równość wariancji

# Analizy post hoc wykonujemy aby dowiedzieć się które średnie się istotnie różnią

# 1 podejście - test t-studenta
pairwise.t.test(Smith$data, Smith$context, data = Smith)
#         Different Imagery Photo Placebo
# Imagery 0.110     -       -     -      
# Photo   0.025     1.000   -     -      
# Placebo 1.000     0.057   0.009 -      
# Same    0.057     1.000   1.000 0.025  

# 2 podejście - test Tukey'a
TukeyHSD(aov(data ~ context, data = Smith))
#                   diff        lwr       upr     p adj
# Imagery-Different    6  -1.188363 13.188363 0.1419858
# Photo-Different      8   0.811637 15.188363 0.0223300
# Placebo-Different   -1  -8.188363  6.188363 0.9946604
# Same-Different       7  -0.188363 14.188363 0.0596787
# Photo-Imagery        2  -5.188363  9.188363 0.9320355
# Placebo-Imagery     -7 -14.188363  0.188363 0.0596787
# Same-Imagery         1  -6.188363  8.188363 0.9946604
# Placebo-Photo       -9 -16.188363 -1.811637 0.0075967
# Same-Photo          -1  -8.188363  6.188363 0.9946604
# Same-Placebo         8   0.811637 15.188363 0.0223300

# 3 podejście 
# install.packages("agricolae")
# library(agricolae)
HSD.test(aov(data ~ context, data = Smith), "context", console = TRUE)
#           data groups
# Photo       19      a
# Same        18     ab
# Imagery     17    abc
# Different   11     bc
# Placebo     10      c
# Grupy łączne: Photo, Same, Imagery
#               Same, Imagery, Different
#               Imagery, Different, Placebo
SNK.test(aov(data ~ context, data = Smith), "context", console = TRUE)
#           data groups
# Photo       19      a
# Same        18      a
# Imagery     17      a
# Different   11      b
# Placebo     10      b
# To nam ładnie odcina Photo Same Imagery w jednej grupie, Different i Placebo w drugiej
LSD.test(aov(data ~ context, data = Smith), "context", console = TRUE)

scheffe.test(aov(data ~ context, data = Smith), "context", console = TRUE)
# Test Scheffera jest najbardziej konserwatywny

# porównanie z testami nieparametrycznymi
aggregate(Smith$data, list(DOSE = Smith$context),
          FUN = median)
kruskal.test(data ~ context, data = Smith)
# 0.002604 < 0.05 odrzucamy H0, a więc mediany są istotnie różne

pairwise.wilcox.test(Smith$data, Smith$context, data = Smith)

# install.packages("FSA")
# library(FSA)
dunnTest(data ~ context, data = Smith, method = "bh")
#             Comparison          Z     P.unadj      P.adj
# 1  Different - Imagery -2.0753448 0.037954590 0.06325765
# 2    Different - Photo -2.8055587 0.005022943 0.02511471
# 3      Imagery - Photo -0.7302139 0.465259440 0.66465634
# 4  Different - Placebo  0.1844751 0.853640764 0.85364076
# 5    Imagery - Placebo  2.2598199 0.023832431 0.04766486
# 6      Photo - Placebo  2.9900338 0.002789466 0.02789466
# 7     Different - Same -2.5288461 0.011443820 0.02860955
# 8       Imagery - Same -0.4535013 0.650187828 0.81273479
# 9         Photo - Same  0.2767126 0.782000765 0.86888974
# 10      Placebo - Same -2.7133212 0.006661251 0.02220417