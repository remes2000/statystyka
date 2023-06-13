#USTAWIENIE KATALOGU BIE¯¥CEGO NA EGZAMINIE:
getwd()
setwd("j:/Desktop/EGZAMIN-STATYSTYKA")
getwd()

#====================================================================
# (ZAD 1.2)
cat("\014")
x <- c(rep(c(TRUE,FALSE,TRUE,FALSE),c(3,4,2,5)))
x <- as.integer(x)
x
rm(list=ls())

#====================================================================
# (ZAD 1.3)
cat("\014")
x <-c(1:20,rep(0,10),seq(2,40,by=2)) 
x <- c(x,x[length(x):1])
x
rm(list=ls())

#====================================================================
# (ZAD 1.4)
cat("\014")
x <- letters
x <- x[c(5,10,15,20,25)]
x
rm(list=ls())


#====================================================================
# (ZAD 1.5)
cat("\014")
x <- 1:1000
x[seq(2,1000,by=2)] <-  1/seq(2,1000,by=2)
rm(list=ls())

#====================================================================
# (ZAD 1.6)
cat("\014")
x <- c(6,5,4,3,3,2)
x[order(x,decreasing = TRUE)]
rm(list=ls())

#====================================================================
# (ZAD 1.7)
cat("\014")
x <-c(-1.876,-1.123,-0.123,0,0.123,1.123,1.876)
sign(x)
round(x,2)s
floor(x)
rm(list=ls())

#====================================================================
# (ZAD 1.8)
cat("\014")
x <- Sys.time()
sqrt(1:(10^8))
y <- Sys.time()
y - x

fun <- function(x) { return(x^(1/2))}
x <- Sys.time()
fun(1:(10^8))
y <- Sys.time()
y - x

rm(list=ls())

#====================================================================
# (ZAD 1.9)
cat("\014")
install.packages("schoolmath")
library(schoolmath)
x <- primlist[primlist<1000]
x[length(x)]
y <- primlist[primlist > 100 & primlist < 500]
length(y)
detach(package:schoolmath)
rm(list=ls())

#====================================================================
# (ZAD 1.10)
cat("\014")
paste0(rep(c("a","b"),c(3,3)) , 1:3 )
#albo
paste(rep(c("a","b"),c(3,3)),c(1,2,3))
rm(list=ls())

#====================================================================
# (ZAD 1.11)
cat("\014")
paste0(1:30,".",c("X","Y","Z"))

rm(list=ls())

#====================================================================
# (ZAD 1.12)
cat("\014")
install.packages("car", dependencies = TRUE)
library(car)
x <- c("a","b","c","d","e")
x <- sample(x, 100, replace = TRUE)
x <- recode(x,"c('a','b')=1; c('c','d')=2; 'e' =3 ")
x
detach(package:car)
rm(list=ls())

#====================================================================
# (ZAD 1.13)
cat("\014")
moja_lista <- list(c("Krystian, Osiñski"),3.14,function(x) sqrt(x),seq(0.02,1,by=0.02))
moja_lista
moja_lista <- moja_lista[c(-1,-3)]
moja_lista
str(lapply(moja_lista, gamma))
rm(list=ls())

#====================================================================
# (ZAD 1.14)
cat("\014")
numbers <- c(rep(0,10))
y <- as.numeric(lapply(1:100, function(x) x^2 ))

i <- 1
repeat{
  a <- (y[i]%%10)+1
 numbers[a] <-  numbers[a] + 1
  i <- i + 1
  if(i == 101) break
}
numbers

rm(list=ls())


#====================================================================
# (ZAD 1.15)
cat("\014")
tab <- function(x,y){
  return(paste(x,"*",y,"=", x*y))
  
}
outer(1:5, 1:5,tab)
rm(list=ls())
#====================================================================
# (ZAD 1.16)
cat("\014")
x <- read.csv("http://ls.home.amu.edu.pl/data_sets/dane1.csv",header = TRUE, sep = ";", dec = ",")
head(x)
x[seq(2,nrow(x),by=2),]
x[x$Wiek > 50 & x$Wezly.chlonne ==1,]
rm(list=ls())

#====================================================================
# (ZAD 1.17)
cat("\014")
x <- 1:10
i <- 1
iloczyn <- 1
while (i < length(x)) {
  iloczyn <-  x[i] * iloczyn 
  i <- i + 1
}
iloczyn
iloczyn <- 1
i <- 1
repeat{
  iloczyn <-iloczyn * x[i]
  i <-  i + 1
  if (i == length(x)) break
}
iloczyn
iloczyn <- 1
for(number in x){
  iloczyn <-  iloczyn * number
}
iloczyn

rm(list=ls())

#====================================================================
# (ZAD 1.18)
cat("\014")
wynik = 0

for(n in 1:100){
  for(r in 1:n){
    if(choose(n,r)>10^6)
      wynik <- wynik + 1
  }
}
wynik
rm(list=ls())

#====================================================================
# (ZAD 1.19)

(x(c(6,5,4,3,2,1)))

fun <- function(x){
if(length(x) < 3){
  stop("nie!")
}
 b <-  sort(x)
  
y <- c(b[c(1:3)],b[(length(b)-2):length(b)])
return(y)
}

x <- c(2, 6, 1, 5, 124, 3, 4)
fun(x)
rm(list=ls())

##=======================================================
# (ZAD 3.1)
cat("\014")

ankieta <- read.table("ankieta.txt",header = TRUE)
data.frame(cbind(wynik = table(ankieta$wynik),procent = prop.table(table(ankieta$wynik))))
x <- ankieta[ankieta$szkola == "p",]$wynik
data.frame(cbind(wynik = table(x),procent = prop.table(table(x))))
barplot(table(ankieta$wynik),xlab = "odpowiedzi",ylab="Liczebnoœæ",main="Rozk³ad empiryczny zmiennej wynik")
barplot(prop.table(table(ankieta$wynik)),xlab="odpowiedzi",ylab="Procent",main="Rozk³ad empiryczny zmiennej wynik")
pie(table(ankieta$wynik))
m <- ankieta[ankieta$plec=="m",]$wynik
k <- ankieta[ankieta$plec=="k",]$wynik

barplot(table(m))
barplot(table(k))

rm(list=ls())

##====================================================================
# (ZAD 3.2)
cat("\014")
load("Centrala.RData")
x <- Centrala
data.frame(cbind(liczba_zg³oszeñ = table(x),prawdopodobieñstwo = prop.table(table(x))))

barplot(table(x),labx="liczba zg³oszeñ",laby="Liczebnoœæ",main="Rozk³ad empiryczny liczby zg³oszeñ w Centrali")
barplot(prop.table(table(x)),xlab="Liczba zg³oszeñ",ylab="Prawdopodoieñstwo",main="Rozk³ad empiryczny liczby zg³oszeñ w centrali")
pie(table(x))
(mean(x$Liczba))
(median(x$Liczba))
(sd(x$Liczba))
(sd(x$Liczba)/mean(x$Liczba))
rm(list=ls())

##====================================================================
# (ZAD 3.3)
cat("\014")
awarie <- read.table("awarie.txt")
head(awarie)

b_h <- hist(awarie$V1,plot = FALSE)$breaks
data.frame(cbind(liczebnosc = table(cut(awarie$V1,breaks = b_h)), procent=prop.table(table(cut(awarie$V1,breaks = b_h)))))
hist(awarie$V1,xlab="czas bezawaryjnej pracy",main = "Rozk³ad empiryczny bezawaryjnej pracy")
rug(jitter(awarie$V1))

hist(awarie$V1,probability = TRUE,xlab="Czas bezawaryjenj pracy",main = "Rozk³ad empiryczny bezawaryjengo czasu pracy", 
     col = "lightblue")
lines(density(awarie$V1), col = "red", lwd = 2)

boxplot(awarie$V1,main="Rozk³ad empiryczny bezawaryjnego czasu pracy",ylab="czas bezawaryjenj pracy")
(mean(awarie$V1))
(median(awarie$V1))
(sd(awarie$V1))
(sd(awarie$V1)/mean(awarie$V1)*100)
library(e1071)
(skewness(awarie$V1))
(kurtosis(awarie$V1))

rm(list=ls())

##====================================================================
# (ZAD 3.3)
cat("\014")

a <-  function(x,na.rm = FALSE){
  if(!is.numeric(x)){
    stop("x nie jest wartoœci¹ numeryczn¹!")
  }
  
  if(!na.rm){
  return(sd(x)/mean(x)*100)
  }else{
    x <- na.omit(x)
    return(sd(x)/mean(x)*100)
}
}
x <- c(1, NA, 3)
a(x)
a(x,na.rm=TRUE)
a()
a(c("x","y"))
rm(list=ls())

##=======================================================
# (ZAD 4.1)
cat("\014")
# histogram z estymatorem j¹drowym gêstoœci
hamulce <- read.table("http://ls.home.amu.edu.pl/data_sets/hamulce.txt", dec = ",")

install.packages("EnvStats")
library(EnvStats)

(mu_est <- mean(hamulce$V1))
(sigma_est <- sd(hamulce$V1))
x2 <- EnvStats::enorm(hamulce$V1,method = "mvue")$parameters
x3 <- EnvStats::enorm(hamulce$V1,method = "mle/mme")$parameters

hist(hamulce$V1, 
     xlab = "D³ugoœæ drogi hamowania", 
     main = "Rozk³ady empiryczny i teoretyczny d³ugoœci drogi hamowania",
     probability = TRUE, 
     col = "lightgreen")
lines(density(hamulce$V1), col = "red", lwd = 2)
curve(dnorm(x, mu_est, sigma_est), 
      add = TRUE, col = "blue", lwd = 2)

curve(dnorm(x, x2[[1]], x2[[2]]), 
      add = TRUE, col = "orange", lwd = 2)
curve(dnorm(x, x3[[1]], x3[[2]]), 
      add = TRUE, col = "purple", lwd = 2)
legend("topleft", legend = c("empiryczny", "teoretyczny","mvue","mle/mme"), col = c("red", "blue","orange","purple"), lwd = 2)

rm(list=ls())

##=======================================================
# (ZAD 4.2)
cat("\014")
load("Centrala.RData")
head(Centrala)
barplot(prop.table(table(Centrala$Liczba)),
        main="Rozk³¹d empiryczny liczby zg³oszeñ",
        ylab="Prawdopodobieñstwo",
        xlab="liczba zg³oszeñ")
library(EnvStats)
lambda_edt <- EnvStats::epois(Centrala$Liczba)$parameters

(probs <- dpois(sort(unique(Centrala$Liczba)),lambda_edt))

sum(probs)
counts <- matrix(c(prop.table(table(Centrala$Liczba)),probs),nrow = 2, byrow = TRUE)
rownames(counts) <- c("empiryczny","teoretyczny")
colnames(counts) <- sort(unique(Centrala$Liczba))
counts
barplot(counts, xlab = "Liczba zg³oszeñ w centrali", ylab="Prawdopodobieñstwo",main="Rozk³ad empiryczny i teoretetyczny liczby zg³oszeñ centrali",col=c("red","blue"),legend=rownames(counts),beside=TRUE)

# wykres kwantyl-kwantyl
qqplot(rpois(length(Centrala$Liczba),lambda=lambda_edt ), Centrala$Liczba)
qqline(Centrala$Liczba, distribution = function(probs) { qpois(probs, lambda =lambda_edt) })

qqPlot(Centrala$Liczba,
       distribution = "pois",
       param.list = list(lambda = lambda_edt),
       add.line = TRUE)


mean(Centrala$Liczba < 4)
ppois(3,lambda_edt)

epois(Centrala$Liczba,ci=TRUE)$interval$limits
epois(Centrala$Liczba,ci=TRUE, ci.method = "pearson.hartley.approx")$interval$limits
epois(Centrala$Liczba,ci=TRUE, ci.method = "normal.approx")$interval$limits

rm(list=ls())


##=======================================================
# (ZAD 4.3)
cat("\014")
awarie <- read.table('awarie.txt')
head(awarie)

w <- (length(awarie$V1)-1)/(length(awarie$V1)*mean(awarie$V1))
pexp(500,w)
hist(awarie$V1,probability = TRUE,col="lightgreen")
lines(density(awarie$V1), col = "red", lwd = 2)
curve(dexp(x, w), 
      add = TRUE, col = "blue", lwd = 2)


mean((awarie$V1 <= 1500) & (awarie$V1 >= 1000))
pexp(1,w)
probability_theoretical <- pexp(1500, w) - pexp(1000, w)
probability_theoretical

library(EnvStats)
eexp(awarie$V1,
      method = "mle/mme",
      ci = TRUE, ci.type = "two-sided", conf.level = 0.95 )$interval$limits



rm(list=ls())

##=======================================================
# (ZAD 5.1)
cat("\014")
# 1 próba - niezale¿ne - ci¹g³e
# H0: mu == 870
g <- c(862, 870, 876, 866, 871, 865, 861, 873, 871, 872)
shapiro.test(g) #rozk³ad normalny - brak podstaw do orzucenia H0
mean(g) #868.7 "less"
t.test(g,mu=870,alternative = "less") # brak podstaw do odrzucenia H0
#OdpowiedŸ: Œrednia g³êbokoœæ morza wynosi 870m

rm(list=ls())

##=======================================================
# (ZAD 5.2)
cat("\014")
# 2 próby - niezale¿ne - ci¹g³e
# H0: mu1 == mu2
A <- c(78.2 , 78.5 , 75.6 , 78.5 , 78.5 , 77.4 , 76.6 ) 
B <- c(76.1 , 75.2 , 75.8 , 77.3 , 77.3 , 77.0 , 74.4 , 76.2 , 73.5 , 77.4)
boxplot(A,B)
shapiro.test(A) #rozk³ad normalny - brak podstaw do odrzucenia H0
shapiro.test(B) #rozk³ad normalny - brak podstaw do odrzucenia H0
var(A)
var(B)
var.test(A,B,alternative = "less") #równoœæ wariancji 
mean(A)
mean(B)
t.test(A,B,alternative = "greater", var.equal = TRUE)
# odrzucamy Ho, przyjmujemy H1
# OdpowiedŸ: Proszek do prania A jest znacz¹co lepszy on proszku do prania B
rm(list=ls())

##=======================================================
# (ZAD 5.3)
cat("\014")
# 2 próby zale¿ne - rozk³ad normalny
#H0: mu1 == mu2
przed <- c(84, 87, 87, 90, 90, 90, 90, 93, 93, 96)
po <-    c(89, 92, 98, 95, 95, 92, 95, 92, 98, 101.)
boxplot(przed,po)
shapiro.test(przed) #normalnoœæ - brak podstaw do odrzucenia H0
shapiro.test(po) #normalnoœæ - brak podstaw do odrzucenia H0
mean(przed)
mean(po)
t.test(przed,po, alternative = "less", paired = TRUE)
# odrzucamy H0, przyjmujemy H1
# OdpowiedŸ: Film ma znacz¹cy wp³yw poprawienie podejœcia do tego typu szkó³
rm(list=ls())

##=======================================================
# (ZAD 5.4)
cat("\014")
# 2 próby - niezale¿ne
# H0 : mu1 == mu2
m <- c(171, 176, 179, 189, 176, 182, 173, 179, 184, 186, 189, 167, 177)
k <- c(161, 162, 163, 162, 166, 164, 168, 165, 168, 157, 161, 172)
boxplot(m,k) 
shapiro.test(m) #normalnoœæ - brak podstaw do odrzucenia H0
shapiro.test(k) #normalnoœæ - brak podstaw do odrzucenia H0
var(m)
var(k)
var.test(m,k,alternative = "greater") #brak takiej samej wariancji!
# odrzucenie testu - t.studenta!
# przejœcie na test welcha!
mean(m)
mean(k)
t.test(m,k,var.equal = FALSE,alternative = "greater")
#odrzucenie H0! Przyjêcie H1
# odpowiedŸ œredni wzorst mê¿czyzn jest znacz¹ca wiêkszy od œredniego wzrostu kobiet
rm(list=ls())

##=======================================================
# (ZAD 5.6)
cat("\014")
# nale¿y wykorzystaæ odpowiedni test nieparametryczny!
# test Manna-Whitneya-Wilcoxona

#PRZYK£AD
x <- c(242.2, 243.8, 252.8, 245.4, 245.6, 253.6, 247.3, 238.7,
       241.6, 242.8, 251.1, 246.8, 247.0, 245.6, 242.2, 253.9)
median(x)
wilcox.test(x,mu=250,alternative = "less")

#ZADANIE1
# 1 próba - niezale¿ne - ci¹g³e

g <- c(862, 870, 876, 866, 871, 865, 861, 873, 871, 872)
median(g)
wilcox.test(g,mu=870,alternative = "greater")

rm(list=ls())

##=======================================================
# (ZAD 5.7)
cat("\014")
#PRZYK£AD
a <- c(6.6, 6.5, 9.0, 10.3, 11.3, 8.1, 6.3, 11.6)
b <- c(6.8, 2.5, 7.4, 8.5, 8.1, 6.1, 3.4, 2.0)
median(a)
median(b)
wilcox.test(a,b,alternative = "greater",paired = TRUE )
# odrzucamy H0
#odpowiedŸ hipnoza zmniejsza znacz¹co poziom odczuwanego bólu

#ZADANIE2
A <- c(78.2 , 78.5 , 75.6 , 78.5 , 78.5 , 77.4 , 76.6 ) 
B <- c(76.1 , 75.2 , 75.8 , 77.3 , 77.3 , 77.0 , 74.4 , 76.2 , 73.5 , 77.4)
median(A)
median(B)
wilcox.test(A,B,alternative = "greater")
#odrzucamy H0 - przyjmujemy H1
#proszek A jest lepszy

#ZADANIE3
przed <- c(84, 87, 87, 90, 90, 90, 90, 93, 93, 96)
po <-    c(89, 92, 98, 95, 95, 92, 95, 92, 98, 101.)
median(przed)
median(po)
wilcox.test(przed,po,alternative = "less",paired = TRUE)
#odrzucamy H0
#film znazcz¹co poprawia zdanie o szko³ach publicznych

#ZADANIE4
m <- c(171, 176, 179, 189, 176, 182, 173, 179, 184, 186, 189, 167, 177)
k <- c(161, 162, 163, 162, 166, 164, 168, 165, 168, 157, 161, 172)
median(m)
median(k)
wilcox.test(m,k,alternative = "greater")
#Odrzucamy H0 - przyjmujemy H1
#Mê¿czyŸni maj¹ znacz¹co wiêkszy œredni wzrost ni¿ kobiety

rm(list=ls())


##=======================================================
# (ZAD 5.8)
cat("\014")
(pr <-  18/22)
prop.test(x = 18, n = 22, p = 0.7, alternative = "greater")
dbinom.test(x=16,n=22,p=0.7,alternative="greater")

rm(list=ls())

##=======================================================
# (ZAD 5.9)
cat("\014")
(prA <- 20/120 )
(prB <- 45/150)
prop.test(c(20, 45), c(120, 150), alternative = "less")
#odrzucamy H0 - przyjmujemy H1
# OdpowiedŸ: w miejœcie B statystycznie znacz¹co wiêcej firm korzytsa z reklam
rm(list=ls())

##=======================================================
# (ZAD 5.10)
cat("\014")
x <- matrix(c(794, 86, 150, 570), nrow = 2) #pisane kolumnami
mcnemar.test(x)
#odrzucamy h0 - przyjmujemy H1
# odpowiedŸ: Istnieje istotna ró¿nica w ocenie dzia³alnoœci prezydenta
rm(list=ls())

##=======================================================
# (ZAD 5.11)
cat("\014")
chisq.test(x=c(38,72,40),p=c(0.2,0.5,0.3))
#Brak podstaw do odrzucenia H0
#odpowiedŸ: Proporcje odpowiadaj¹ preferencjom klientów
rm(list=ls())

##=======================================================
# (ZAD 5.12)
cat("\014")
load("Centrala.RData")
table(Centrala$Liczba)
lambda_est <- mean(Centrala$Liczba)
(p0 <- c(dpois(0:4, lambda_est), 1 - ppois(4, lambda_est)))
chisq.test(table(Centrala$Liczba), p=p0)
(1 - pchisq(1.3916, 4))
rm(list=ls())

##=======================================================
# (ZAD 5.13)
cat("\014")

x <- matrix(c(50, 20, 10, 90, 50, 6), nrow = 3)
chisq.test(x)
#Odrzucamy H0 - przyjmujemy H1
#Jakoœ produktu zale¿y od metody produkcji

rm(list=ls())


##=======================================================
# (ZAD 5.14)
cat("\014")

x <- c(242.2, 243.8, 252.8, 245.4, 245.6, 253.6, 247.3, 238.7,
       241.6, 242.8, 251.1, 246.8, 247.0, 245.6, 242.2, 253.9)


x <- rnorm(101) #random + nazwa rozk³adu
ks.test(x, "pnorm")

rm(list=ls())

##=======================================================
# (ZAD 5.14)
cat("\014")
#PRZYK£AD
library(UsingR)
head(homework)
ks.test(homework$Private, homework$Public)

#ZADANIE2
A <- c(78.2 , 78.5 , 75.6 , 78.5 , 78.5 , 77.4 , 76.6 ) 
B <- c(76.1 , 75.2 , 75.8 , 77.3 , 77.3 , 77.0 , 74.4 , 76.2 , 73.5 , 77.4)
ks.test(A,B)

#ZADANIE4
m <- c(171, 176, 179, 189, 176, 182, 173, 179, 184, 186, 189, 167, 177)
k <- c(161, 162, 163, 162, 166, 164, 168, 165, 168, 157, 161, 172)
ks.test(m,k)

rm(list=ls())

##=======================================================
# (ZAD 6.1)
#
cat("\014")

same <- data.frame(data=c(25,26,17,15,14,17,14,20,11,21),context = "same")
Different <- data.frame(data=c(11,21,9,6,7,14,12,4,7,19),context = "Different")
Imagery <- data.frame(data=c(14,15,29,10,12,22,14,20,22,12),context = "Imagery")
Photo <- data.frame(data=c(25,15,23,21,18,24,14,27,12,11),context = "Photo")
Placebo <- data.frame(data=c(8,20,10,7,15,7,1,17,11,4),context = "Placebo")
Smith <- data.frame(rbind(same,Different,Imagery,Photo,Placebo))
Smith

summary(Smith)

# 1.Wyznacz œrednie i zrób wykres
aggregate(Smith$data, list(DOSE = Smith$context), FUN = mean)
boxplot(data ~ context, data = Smith)

# 2.Wykonaj test analizy wariancji
summary(aov(data ~ context, data = Smith))

# 3.SprawdŸ za³o¿enia modelu jednoczynnikowej analizy wariancji.
shapiro.test(lm(data ~ context, data = Smith)$residuals)
bartlett.test(data ~ context, data = Smith)
fligner.test(data ~ context, data = Smith)
library(car)
leveneTest(data ~ context, data = Smith)
leveneTest(data ~ context, data = Smith, center = "mean")

# 4.Wykonaj testy post hoc
pairwise.t.test(Smith$data, Smith$context, data = vaccination)
model_aov <- aov(data ~ context, data = Smith)
TukeyHSD(model_aov)
library(agricolae)
HSD.test(model_aov, "context", console = TRUE)
SNK.test(model_aov, "context", console = TRUE)
LSD.test(model_aov, "context", p.adj = "holm", console = TRUE)
scheffe.test(model_aov, "context", console = TRUE)

# podpunkt 6------------------------
aggregate(Smith$data, list(DOSE = Smith$context),
          FUN = median)

kruskal.test(data ~ context, data = Smith)

pairwise.wilcox.test(Smith$data, Smith$context, data = Smith)
install.packages("FSA")
library(FSA)
dunnTest(data ~ context, data = Smith, method = "bh")


##=======================================================
# (ZAD 6.2)
#
cat("\014")
eysenck <- read.table("http://ls.home.amu.edu.pl/data_sets/Eysenck.txt",header = TRUE)
tab <- eysenck[,c(2,3)]

summary(tab)
#1
aggregate(tab$Wynik, list(DOSE = tab$Instrukcja), FUN = mean)

#2
boxplot(Wynik ~ Instrukcja, data = tab)

#3
summary(aov(Wynik ~ Instrukcja, data = tab))

#4
shapiro.test(lm(Wynik ~ Instrukcja, data = tab)$residuals)
bartlett.test(Wynik ~ Instrukcja, data = tab)
fligner.test(Wynik ~ Instrukcja, data = tab)
leveneTest(Wynik ~ Instrukcja, data = tab)
leveneTest(Wynik ~ Instrukcja, data = tab, center = "mean")

#5
pairwise.t.test(tab$Wynik, tab$Instrukcja, data = tab)
model_aov <- aov(Wynik ~ Instrukcja, data = tab)
TukeyHSD(model_aov)
HSD.test(model_aov, "Instrukcja", console = TRUE)
SNK.test(model_aov, "Instrukcja", console = TRUE)
LSD.test(model_aov, "Instrukcja", p.adj = "holm", console = TRUE)
scheffe.test(model_aov, "Instrukcja", console = TRUE)

#6 ---

#7 
aggregate(tab$Wynik, list(DOSE = tab$Instrukcja),
          FUN = median)

kruskal.test(Wynik ~ Instrukcja, data = tab)

pairwise.wilcox.test(tab$Wynik, tab$Instrukcja, data = tab)

dunnTest(Wynik ~ Instrukcja, data = tab, method = "bh")


rm(list=ls())