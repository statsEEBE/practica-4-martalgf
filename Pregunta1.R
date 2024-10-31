# MODELO DE POISSON
# X = #número de llamadas en una hora

# De media hay 25 llamadas por hora -> E(X)=lamda=25
exp(-25)*25^20/factorial(20)
dpois(20, 25)

#pintemos la possion
x <- 0:40
x
f <- dpois(x, 25)
plot(x, f, type="h", col="red")
#Usamos h (chinchetas) para la variable aleatoria discreta -> función massa de probabilidad

#pbinom(), ppois()=, etc. -> P(X<=x) Incluye el primer valor del paréntesi
ppois(20, 25) #P(X<=x)
ppois(22,25) - ppois(17,25) #P(18<=X<=22)
# La suma de probabilidades hasta 22 - suma de probabilidades hasta 17 (porque en mi probabilidad incluyo 18)

#pintemos la distribucuión
plot(x, ppois(x,25), type="s", col="red")

#qpois() inversa de la función de distribución
qpois(0.5, 25)

#1er quantil
qpois(0.25, 25)


#Función de densidad -> variables aleatorias contínuas

#b) 
1-pexp(0.052, 25)

#Función de densidad
t <- seq(0,1,0.01)
plot(t, dexp(t,25), type="l", col="red")
#Función distribución
plot(t, pexp(t,25), type="l", col="red")

#c)
mean(rexp(500000,25))
1/25
