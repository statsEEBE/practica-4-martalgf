# E(X) = 10000 = 1/lamda
#lamda = 1/10000

#a) P(x>=13000)
1-pexp(13000,1/10000) 
#En el caso de las VAC -> 1-P(X<=x) -> Ej: 1-pexp(13000,1/10000)
#En cambio, para VAD -> 1-p(X<x) -> Ej: 1-pbinom(12999,1/10000) 

#b)
#F(t)=0.8
#F^-1(0.8)=t
qexp(0.1, 1/10000)

#c)
set.seed(85)
simulacion <- rexp(100,1/10000)
simulacion
mean(simulacion)
median(simulacion)
var(simulacion)

