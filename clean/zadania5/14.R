# Wykorzystamy Test Kołmogorowa-Smirnowa
x <- c(242.2, 243.8, 252.8, 245.4, 245.6, 253.6, 247.3, 238.7,
       241.6, 242.8, 251.1, 246.8, 247.0, 245.6, 242.2, 253.9)
ks.test(x, "pnorm")

# 2.531e-14 < 0.05 
# Odrzucamy H0, dane nie maja rozkladu normalnego