przed = c(84, 87, 87, 90, 90, 90, 90, 93, 93, 96)
po = c(89, 92, 98, 95, 95, 92, 95, 92, 98, 101)

boxplot(przed, po)

# sa normalne bo p wieksze niz 0.05
shapiro.test(przed)
shapiro.test(po)

var(m)
var(k)

# wariancje nie sa rowne bo p < 0.05
var.test(m, k, alternative = "greater")

# a wiec prawdziew jest H1!!!! sigma_1^2 > sigma_2^2


mean(przed)
mean(po)
t.test(przed, po, alternative = "less", paired = TRUE)

# no i pojebalem dwa zadania xD