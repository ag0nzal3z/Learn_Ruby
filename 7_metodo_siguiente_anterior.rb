# Obtenemos el numero siguiente al introducido o el anterior
a = 99

# Numero siguiente
numero_siguiente = a.next
puts numero_siguiente

# Numero anterior
numero_anterior = a.pred
puts numero_anterior


# Se pueden aplicar varios metodos a la vez
# Aqui le decimos que ha de ser el siguiente numero al definido en la variable a y a la vez le preguntamos
# si dicho numero es par, con lo que a = 99 + 1, el resultado es 100 y al preguntarle si es par, la respuesta
# es True, ya que es par.
puts a.next.even?