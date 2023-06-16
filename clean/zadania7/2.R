load("../data/braking.RData")

# Wykres rozrzutu
plot(braking, main = "Wykres rozrzutu", pch = 16)

model <- lm(distance ~ speed, data = braking)
plot(braking, main = "Wykres rozrzutu", pch = 16)
abline(model, col = "red", lwd = 2)
future <- data.frame(speed = 30:50)
# Predykcje
stats::predict(model, future, interval = 'prediction')

# Bez odstającej wartości
brakingB <- braking[-27, ]
modelB <- lm(distance ~ speed, data = brakingB)
plot(brakingB, main = "Wykres rozrzutu", pch = 16)
plot(brakingB, main = "Wykres rozrzutu", pch = 16)
abline(modelB, col = "red", lwd = 2)
future <- data.frame(speed = 30:50)
stats::predict(modelB, future, interval = 'prediction')