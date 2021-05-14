# Para convertir un tipo de dato a otro usamos metodos

# Convertir numeros enteros a flotantes
entero = 3
puts entero.to_f
# Convertir flotante a entero ( los decimales se pierden )
decimal = 3.33
puts decimal.to_i
# Convertir cadena a entero o flotante
cadena = "3"
puts cadena.to_i
puts cadena.to_f
# El metodo to_i adminte un argumento que representa la base, numero comprendido entre el 2 y el 36
# si no se le pasa argumento toma por defecto la base 10
puts "10".to_i(2)
# Si intentamos convertir una cadena a numerico, pero la cadena tiene caracteres alfabeticos
# cogera el primer numero que encuentre, si no es posible convertir una cadena a numerico 
# nos devolvera un 0 como valor. 
cadena2 = "3 Esto es una cadena y tiene un numero"
puts cadena2.to_i
cadena3 = "Esto es una cadena y tiene un numero: 17"
puts cadena3.to_i
# Convertir un hash en array, se obtiene un arreglo de arreglos
hash = {"nombre" => "Alberto", "apellido" => "González", "telefono" => "00000000"}
print hash.to_a
# Convertir arreglo de arreglos en hash
array_de_arrays = hash.to_a
print array_de_arrays.to_h
# Convertir a string
n1 = 3000
n2 = 3.33
puts n1.to_s
puts n2.to_s
puts n1.to_s + n2.to_s