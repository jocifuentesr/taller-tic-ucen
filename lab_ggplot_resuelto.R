# Instalación y carga de paquetes necesarios
install.packages("ggplot2")
library(ggplot2)

# 1. Gráfico de dispersión para mtcars (mpg vs hp)
p1 <- ggplot(mtcars, aes(x=hp, y=mpg)) + 
  geom_point() + 
  labs(title = "Relación entre mpg y hp", x = "Caballo de Fuerza (hp)", y = "Millas por galón (mpg)")

print(p1)
# Observación: A medida que los caballos de fuerza aumentan, las millas por galón tienden a disminuir.

# 2. Histograma del precio de los diamantes
p2 <- ggplot(diamonds, aes(x=price)) + 
  geom_histogram(binwidth=500, fill="blue", color="black", alpha=0.7) + 
  labs(title = "Distribución de precios de los diamantes", x = "Precio", y = "Cantidad")

print(p2)
# Observación: La mayoría de los diamantes tienden a tener un precio más bajo.

# 3. Gráfico de barras de cantidad de diamantes por tipo de corte
p3 <- ggplot(diamonds, aes(x=cut)) + 
  geom_bar(fill="green", color="black", alpha=0.7) + 
  labs(title = "Cantidad de diamantes por tipo de corte", x = "Tipo de Corte", y = "Cantidad")

print(p3)
# Observación: El tipo de corte 'Ideal' es el más común.

# 4. Gráfico de dispersión para iris (Sepal.Length vs Sepal.Width)
p4 <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + 
  geom_point() + 
  labs(title = "Relación entre Sepal.Length y Sepal.Width", x = "Longitud del Sépalo", y = "Ancho del Sépalo")

print(p4)
# Observación: Cada especie parece tener un rango específico en las dimensiones del sépalo.

# 5. Gráfico de caja de cada especie en iris con facet_wrap
p5 <- ggplot(iris, aes(x=Species, y=Sepal.Length, color=Species)) + 
  geom_boxplot() + 
  facet_wrap(~Species) + 
  labs(title = "Distribución de Sepal.Length por especie", x = "Especie", y = "Longitud del Sépalo")

print(p5)

# 6. Gráfico de caja para mpg (hwy vs drv)
p6 <- ggplot(mpg, aes(x=drv, y=hwy, color=drv)) + 
  geom_boxplot() + 
  labs(title = "Distribución de consumo de combustible por tipo de transmisión", x = "Tipo de Transmisión", y = "Carretera mpg")

print(p6)
# Observación: La transmisión 'f' (front-wheel drive) parece ser más eficiente en términos de consumo de combustible.

# 7. Relación entre precio y claridad de los diamantes
p7 <- ggplot(diamonds, aes(x=clarity, y=price, color=clarity)) + 
  geom_boxplot() + 
  labs(title = "Relación entre precio y claridad de los diamantes", x = "Claridad", y = "Precio")

print(p7)
# Observación: No hay una tendencia clara entre la claridad y el precio. 

# 8. Patrón mensual en niveles de ozono con airquality
p8 <- ggplot(airquality, aes(x=as.factor(Month), y=Ozone)) + 
  geom_boxplot(fill="orange", color="black", alpha=0.7) + 
  labs(title = "Niveles de ozono a lo largo de los meses", x = "Mes", y = "Ozono (ppb)")

print(p8)
# Observación: Hay variaciones en los niveles de ozono a lo largo de los meses.


# 9. Relación entre cyl y mpg en mtcars
p9 <- ggplot(mtcars, aes(x=as.factor(cyl), y=mpg, color=as.factor(cyl))) + 
  geom_boxplot() + 
  labs(title = "Relación entre número de cilindros y mpg", 
       x = "Número de Cilindros", y = "Millas por galón (mpg)")

print(p9)
# Observación: En general, se puede ver que los autos con menos cilindros 
#tienden a tener una mayor eficiencia de combustible (mpg más alto).

