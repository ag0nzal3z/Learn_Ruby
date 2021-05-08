# Estraer Elementos de un Array

array_ejemplo = ["Pera", "Manzana", "Naranja", "Limon", "Platano", "Kiwi"]
# Metodo []
puts array_ejemplo[3]
print array_ejemplo[2..4]
# Metodo slice
puts array_ejemplo.slice(3)
print array_ejemplo.slice(2..4)
# Metodo take, toma la cantidad de elementos que se le especifiquen desde la posicion 0
puts array_ejemplo.take(3)
# Metodo drop, es lo puesto al metodo take, en este caso se omiten los elementos
puts array_ejemplo.drop(3)


# Agregar mas elementos a un Array

# Metodo push, se agregan elementos al final de arreglo
array_ejemplo.push("Melon")
print array_ejemplo
# Metodo <<, se agregan elementos al final de arreglo
array_ejemplo << "Sandia"
print array_ejemplo
# Metodo unshift, agrega elementos al inicio del arreglo
array_ejemplo.unshift("Aguacate")
print array_ejemplo
# Metodo index, nos indica en que indice esta un elemento
puts array_ejemplo.index("Limon")
# Metodo insert, nos permite insertar elemento en una posicion especifica, hay que pasarle
# varios argumentos, el primero es el numero entero del indice, y el resto los elemetos que
# vamos a agregar al arreglo
array_ejemplo.insert(4,"Tomate", "Zanahoria")
print array_ejemplo


# Eliminar elementos de un Array

array_ejemplo2 = array_ejemplo
# Metodo delete, esta eliminacion elimina todos los elementos con el mismo nombre que le pasemos
array_ejemplo2.delete("Limon")
print array_ejemplo2
# Metodo delete_at, eliminamos por el numero de indice
array_ejemplo2.delete_at(3)
print array_ejemplo2
# Metodo delete_if, permite eliminar elementos que cumplan una condicion. No recibe argumentos
# recibe un bloque de codigo, utiliza llaves
array_ejemplo2.delete_if{|elemento| elemento.eql?("Zanahoria")}
print array_ejemplo2
# Metodo keep_if, funciona como el anterior, pero en vez de remover los elementos que cumplen la condicion,
# son los unicos que permanecen
array_ejemplo2.keep_if{|elemento| elemento.eql?("Tomate")}
print array_ejemplo2
# Metodo shift, elimina elementos iniciales
array_ejemplo = ["Pera", "Manzana", "Naranja", "Limon", "Platano", "Kiwi"]
array_ejemplo.shift(2)
print array_ejemplo
# Metodo pop, elimina elementos finales del arreglo
array_ejemplo.pop
print array_ejemplo
# EL metodo uniq! elimina elementos repetidos
array_repetidos = ["Sol", "Sol", "Lluvia", "Sol", "Sol", "Lluvia", "Lluvia", "Lluvia"]
print array_repetidos
array_repetidos.uniq!
print array_repetidos