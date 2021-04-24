# Variables
precio = 12
unidades = 3
total = precio * unidades

puts total


# Se pueden asignar varias variables en la misma linea
color, vehiculo, ruedas = "verde", "bicicleta", 2

puts color
puts vehiculo
puts ruedas


# Saber el tipo de dato que guarda la variable, Ruby usa tipado dinamico
puts color.class
puts ruedas.class


# Asignacion abreviada
# Unidades iniciales
unidades = 4
# Restamos una unidad
unidades -= 1
puts unidades

# Sumamos cinco unidades
unidades += 5
puts unidades
