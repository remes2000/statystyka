m <- c(171, 176, 179, 189, 176, 182, 173, 179, 184, 186, 189, 167, 177)
k <- c(161, 162, 163, 162, 166, 164, 168, 165, 168, 157, 161, 172)

boxplot(m, k)



mean(m)
mean(k)

t.test(m, k, alternative = "greater", var.equal = FALSE)