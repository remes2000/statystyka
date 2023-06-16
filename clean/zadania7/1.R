rok <- c(1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002)
liczba_przypadkow <- c(39.7, 38.2, 34.7, 33.1, 30.1, 28.4, 26.3, 24.7)
data_set <- data.frame(rok = rok, liczba_przypadkow = liczba_przypadkow)

# Wykres rozrzutu
plot(data_set, main = "Wykres rozrzutu", pch = 16)

# lm -> linear models

model <- lm(liczba_przypadkow ~ rok, data = data_set)
# y = -2.219 * x + 4446.667

plot(data_set, main = "Wykres rozrzutu", pch = 16)
abline(model, col = "red", lwd = 2)

# Współczynniki równania
coef(model)
# Przedziały ufności
confint(model)
# Podsumowanie modelu
summary(model)
# Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 4466.66667  163.40805   27.33 1.58e-07 ***
#  rok           -2.21905    0.08177  -27.14 1.65e-07 ***
# Pr(>|t|) jest < 0.05 więć oba współczynniki są istotne

# Predykcja dla lat 2003-2007
future <- data.frame(rok=2003:2007)
predict <- data.frame(stats::predict(model, future, interval = 'prediction'))

new_data_set = data.frame(
  rok = c(rok, 2003:2007),
  liczba_przypadkow = c(liczba_przypadkow, predict$fit)
)
plot(new_data_set, main = "Wykres rozrzutu", pch = 16)
abline(model, col = "red", lwd = 2)