awarie <- read.table("/home/students/s462084/statystyka/awarie.txt")
estymator <- 1/mean(awarie$V1)

empiryczny <- c(prop.table(table(awarie$V1)))

teoretyczny <- dexp(awarie$V1, rate = estymator)

hist(awarie$V1, 
     xlab = "Długość drogi hamowania", 
     main = "Rozkłady empiryczny i teoretyczny czasu bezawaryjnej pracy",
     probability = TRUE, 
     col = "lightgreen")
lines(density(awarie$V1), col = "red", lwd = 2)
curve(dexp(x, rate = estymator), 
      add = TRUE, col = "blue", lwd = 2)
legend("topright", legend = c("empiryczny", "teoretyczny"), col = c("red", "blue"), lwd = 2)