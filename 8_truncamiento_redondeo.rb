# Numeros Flotantes
flotante_decimal = 0.0
puts flotante_decimal.class
flotante_millonesima = 4.672195
puts flotante_millonesima.class
notacion_cientifica = 2.5e45
puts notacion_cientifica.class


# El truncamiento consiste en cortar los decimales, reduciendo asi la longitud de estos
puts 23.7654.truncate(2)
puts 23.7654.truncate(1)

# Metodo de aproximacion, redondeo hacia arriba
# Si el digito es menor que 5, se queda igual y practicamente es un truncamiento
# Pero si es mmayor o igual a 5 entonces la cifra aumenta en 1
puts 23.233.round(2)
puts 23.238.round(2)

# En este caso al aumentar en 1, no se puede poner 10, por eso se aumenta en 1 todas las unidades, quedando 10.0
puts 9.99999999999.round(6)
# Si no se pone argumento, el resultado sera un numero entero
puts 9999.99.round
