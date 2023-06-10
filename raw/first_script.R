# zad 2
vec <- c(rep(TRUE, 3), rep(FALSE, 4), rep(TRUE, 2), rep(FALSE, 5))
as.integer(vec)
# zad 3
c(
  c(c(1:20), rep(0, 10), seq(2, 40, 2)),
  rev(c(c(1:20), rep(0, 10), seq(2, 40, 2)))
)
# zad 4
letters[seq(5,25,5)]
# zad 5
x <- 1:1000
x[x %% 2 == 0] <- 1 / x[x %% 2 == 0]
# zad 6
x <- c(6, 3, 4, 5, 2, 3)
x[order(x, decreasing=TRUE)]
# zad 7
x <- c(-1.876, -1.123, -0.123, 0, 0.123, 1.123, 1.876)
sign(x)
round(x, 2)
floor(x)
# zad 8
# ...
# zad 9
install.packages("schoolmath")
library(schoolmath)
head(primlist)
max(primlist[primlist < 1000])
length(primlist[primlist > 100 & primlist < 500])
# zad 13
moja_lista <- list(c("Michal", "Nieruchalski"), pi, sqrt, seq(0.02, 1, 0.02))
moja_lista[c(1, 3)] <- NULL
lapply(moja_lista, gamma)
# zad 14
table(c(1:100)^2 %% 10)

