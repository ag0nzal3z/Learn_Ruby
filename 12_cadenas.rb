# Cadenas

# Ponemos el .class para que nos devuelva el tipo, como podemos ver
# ambas son tipo String
puts "Cadena en comillas dobles".class
puts 'Cadena en comillas simples'.class


# Metodo size y length. Nos permiten obtener el tamaño de una cadena.
frase = "Era un dia lluvioso, el sol se escondia entre las nubes..."
puts frase.size
puts frase.length

# El metodo reverse invierte el sentido de la cadena.
puts "ejemplo".reverse

# Para saber si la cadena esta vacia usamos empty
# Los espacios se consideran caracteres
puts "".empty?
puts " ".empty?
puts "ejemplo".empty?

# Con el metodo strip eliminaremos los espacios al inicio y al final de una cadena
puts " Esto es un ejemplo ".strip

# Con el metodo clear la cadena acabara vacia
puts "Esto es un ejemplo".clear


# Transformacion Caracteres Alfabeticos

# El metodo Capitalize pone el primer caracter de la cadena en mayuscula
# y el resto de caracteres en minuscula
puts "esto es un ejemplo".capitalize

# El metodo downcase todos los caracteres alfabeticos se vuelven minusculas
puts "ESTO ES UN EJEMPLO".downcase

# El metodo upcase pone todos los caracteres alfabeticos en mayusculas
puts "esto es un ejemplo".upcase

# El metodo swapcase convierte la mayusculas en minusculas y al reves
puts "EsTo ES uN EJeMpLo".swapcase

