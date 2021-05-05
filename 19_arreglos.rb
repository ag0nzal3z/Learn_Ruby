=begin
Los arreglos son colecciones cuyos objetos estan ordenados secuencialmente
Pueden ser uniformes o variadas
Se pueden crear mediante [] o Array.new()
Puede estar conformado por 0 o mas elementos, un elemento es cada uno de los miembros
pertenecientes al arreglo, y estos deben de ir separados por una coma
Cada elemento dentro de un arreglo tiene una posicion determinada, denominada indice
=end

arreglo_string = ["otoño", "invierno", "primavera", "verano"]
arreglo_numerico = [1, 2, 3, 4, 5, 6]
arreglo_mezclado = ["otoño", 1, "invierno", 2, "primavera", 3, "verano", 4]
arreglo_booleano = [false, true, false, true]
arreglo_simbolos_datos = ["otoño", 1, "invierno", 2, "primavera", 3, "verano", 4, true, {}, 'cadena texto']
puts arreglo_string
puts arreglo_numerico
puts arreglo_mezclado
puts arreglo_booleano
puts arreglo_simbolos_datos
# Si usamos print, lo imprimira en una sola linea
print arreglo_string
print arreglo_numerico
print arreglo_mezclado
print arreglo_booleano
print arreglo_simbolos_datos
# Dejamos un espacio vacio para separar
puts " "
puts " "

# Metodos basicos 

array_ejemplos = ["casa", "coche", "trabajo", "garaje", "mochila", 1, -2, 3, 3, 5, true, "vacaciones", 'hoy hace calor']
# Obtener el primer elemento del array
puts array_ejemplos.first
# Obtener el ultimo elemento
puts array_ejemplos.last
# Saber el numero de elementos del array
puts array_ejemplos.size
puts array_ejemplos.length
puts array_ejemplos.count
# Con el metodo count se pueden contar elementos iguales a uno que le indiquemos
puts array_ejemplos.count(3)
puts array_ejemplos.count("vacaciones")
# Ordenar elementos del array de forma ascendente
numeros = [34, 22, 1, 52, 98, 3, -5, 7]
puts numeros.sort
# El ultimo elemento pasa a ser el primer indice, el penultimo elemento pasa a ser el segundo indice...
puts array_ejemplos.reverse
# Para ordenar de forma descendente hay que utilizar los dos metodos anteriores juntos
puts numeros.sort.reverse
# Calcular el maximo
puts numeros.max
# Calcular el minimo
puts numeros.min
# Sumar todos los elementos, solo valido para arrays numericas
puts numeros.sum
puts numeros.reduce(:+)
# Sacar un promedio
promedio = numeros.sum / numeros.length
puts promedio




