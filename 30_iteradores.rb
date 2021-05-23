# ITERADORES
# Iterar significa repetir algo varias veces
# Los iteradores tienen un proposito bien definido

# TIMES
# Repite n veces
10.times {puts "Esto es el iterador times"}

# UPTO
# Repite n veces, desde un numero hasta otro. Este iterador recibe un argumento
1.upto(10) {|i| puts "El numero es: #{i}"}

# DOWNTO
# Lo contrario al anterior, se le da un numero y decrece hasta el numero del argumento
10.downto(0) do |i|
    unless i.zero?
        puts "Te queda #{i}"
    else
        puts "Se acabo el tiempo"
    end
end

# EACH_CHAR: Se utiliza para iterar cadenas
"Alberto".each_char {|i| puts i}


# Iterar Arrays
dias = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
# EACH, REVERSE_EACH
dias.each {|i| puts "Hoy es: #{i}"}
dias.reverse_each {|i| puts "Hoy es: #{i}"}
# EACH_INDEX: Itera los indices del array
dias.each_index {|i| puts "Numero de indice: #{i}"}
# EACH_WITH_INDEX: Itera el elemento y el indice
dias.each_with_index {|elemento, indice| puts "El elemento: #{elemento} tiene el siguiente indice: #{indice}"}
# MAP, COLLECT: Ademas de recorrer los elementos, tambien los modifican o sustituyen
dias.map! {|elemento| elemento.upcase!}
puts dias
# SELECT: Nos permite quedarnos con los elementos de interes que cumplan la condicion
frutas = ["pera", "manzana", "limon", "sandia", "naranja", "melon", "platano"]
frutas.select! {|elemento| elemento.start_with?("na")}
puts frutas
# REJECT : Nos permite quedarnos con los elementos que no cumplen la condicion
frutas = ["pera", "manzana", "limon", "sandia", "naranja", "melon", "platano"]
frutas.reject! {|elemento| elemento.start_with?("na")}
puts frutas


# Iterar Hash
# En el caso de los hash hay que pasarles dos argumentos
capitales = {Paris: "Paris", Alemania: "Berlin", España: "Madrid"}
# EACH, EACH_PAIR
capitales.each {|key, value| puts "#{key} --> #{value}"}
capitales.each_pair {|key, value| puts "#{key} --> #{value}"}
# EACH_VALUE, EACH_KEY
capitales.each_value {|value| puts value}
capitales.each_key {|key| puts key}
# SELECT, REJECT
pais = capitales.select! {|key, value| value.eql?("Madrid")}
puts pais