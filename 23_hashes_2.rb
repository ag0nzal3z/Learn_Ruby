hash_datos = {vehiculo: "coche", color: "verde", modelo: "toyota"}
# Obtencion Key and Value
# Le pasamos el key y obtenemos el value
print hash_datos[:modelo] 
# Le pasamos el value y obtenemos la key
print hash_datos.key("toyota")
# Obtencion de varias keys and values
print hash_datos.keys
print hash_datos.values
# Obtener una lista de valores especificados por sus keys
print hash_datos.values_at(:vehiculo, :modelo)


# Insertar, reasignar y eliminar elementos de forma individual o total
hash_ciudades = {Aragon: "Zaragoza", Madrid: "Madrid", Valencia: "Ni idea"}
print hash_ciudades
# Insertal key and value
hash_ciudades['Andalucia'] = 'Sevilla'
print hash_ciudades
# Modificar un valor
hash_ciudades[:Valencia] = 'Valencia'
print hash_ciudades
# Combinar hash
hash_capitales = {Paris: "Paris", Alemania: "Berlin", España: "Madrid"}
hash_capitales2 = {UK: "Londres"}
hash_combinado = hash_ciudades.merge(hash_capitales).merge(hash_capitales2)
print hash_combinado
# Eliminar mediante la key
hash_combinado.delete(:UK)
print hash_combinado
# Eliminar todos los pares key, value
hash_combinado.clear
puts hash_combinado
