awarie <- read.table("awarie.txt")

data.frame(
  cbind(
    liczebnosc = table(cut(awarie$V1, breaks = hist(awarie$V1, plot = FALSE)$breaks)),
    procent = prop.table(table(cut(awarie$V1, breaks = hist(awarie$V1, plot = FALSE)$breaks)))
  )
)

hist(awarie$V1,
     xlab = "Długość drogi hamowania",
     main = "Rozkład empiryczny długości drogi hamowania",
     breaks = hist(awarie$V1, plot = FALSE)$breaks)
lines(density(awarie$V1), col = "red", lwd = 2)