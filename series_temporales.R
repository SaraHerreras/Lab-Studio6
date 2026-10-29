# Series temporales y patrones con el dataset nottem (plantilla)
# Temperaturas mensuales en Nottingham (1920-1939), incluido en R.
# Completa cada TODO siguiendo los pasos del enunciado.

# 1. Carga del dataset
data("nottem")
# TODO: inspecciona la clase (class), el resumen (summary) y grafica la serie (plot)
print(class(nottem))
print(summary(nottem))

# Graficar la serie temporal
plot(nottem, main = "Temperaturas Mensuales en Nottingham (1920-1939)",
     xlab = "Año", ylab = "Temperatura", col = "blue")
# 2. Descomposicion de la serie temporal
# TODO: usa decompose() para separar tendencia, estacionalidad y componente
#       aleatorio, y grafica el resultado
plot(decompose(nottem))

# 3. Analisis de estacionariedad
# TODO: graficos de autocorrelacion acf() y autocorrelacion parcial pacf()
# TODO: prueba de Dickey-Fuller con adf.test() del paquete tseries
#       (install.packages("tseries") si no lo tienes)
install.packages("tseries")
acf(nottem, type="covariance", plot="FALSE")
pacf(nottem, lag.max=12)

# 4. Transformacion de la serie (si es necesario)
# TODO: si la serie no es estacionaria, aplica diff() y repite acf/pacf/adf.test
#       sobre la serie diferenciada
print("La serie presenta una gran estacionalidad, no hace falta modificar nada")

# 5. Deteccion de valores atipicos
# TODO: boxplot() de la serie y marca visualmente los valores extremos en el
#       grafico de la serie original (points con color condicional)
boxplot(nottem)
