# Busqueda de Caracteres

# Para saber si un caracter, palabra o frase estan en la cadena usamos el metodo include?
cadena = "Esto es un ejemplo de cadena en Ruby"
puts cadena.include?("Ruby")

# Tambien podemos usar los metodos start_with? o end_with? para saber si empiezan o terminan con la busqueda.
cadena1 = "Prueba de metodo"
puts cadena1.start_with?("Pr")
puts cadena1.end_with?("todo")
puts "Alberto".start_with?("J")
puts "Persona".end_with?("z")

# Obtencion de Caracteres y Subcadenas

# Se pone el numero del caracter que queremos obtener entre [], el primer caracter corresponde al 0
cadena2 = "Ejemplo"
puts cadena2[0]

# Una Subcadena es un fragmento obtenido de una cadena
# Se puede obtener mediante un rango o pasandole un valor de partida y un valor final.
# tambien se puede usar el metodo slice
puts "fragmento de una cadena"[0..8]
puts "fragmento de una cadena"[0,9]
puts "fragmento de una cadena".slice(0..8)

# Insercion en una cadena

# El metodo insert nos permite agregar caracteres dentro de una cadena, indicandole la posicion y el valor
# Este metodo es perfecto si es una cadena que conoces muy bien y tiene una longitud estable
cadena3 = "arbol, planta, arbusto, maceta"
puts cadena3
cadena3.insert(5, ", pino")
puts cadena3
# Para agregar caracteres justo al inicio de la cadena usamos el metodo prepend
puts cadena3.prepend("seto, ")

# Remplazo de caracteres

# Para remplazar caracteres usaremos el metodo sub y gsub
# El metodo sub remplaza la primera correspondencia encontrada
# El metodo gsub replaza todas las coincidencias
# A estos metodos hay que pasarles dos argumentos
# El primero es la cadena a remplazar
# El segundo la cadena por la que se remplazara
cadena4 = "pimiento, manzana, zanahoria, lechuga, tomate, berengena"
puts cadena4
puts cadena4.sub("manzana", "naranja")
cadena5 = "pimiento, manzana, zanahoria, lechuga, manzana, tomate, berengena, manzana"
puts cadena5.gsub("manzana", "naranja")
# El metodo replace cambiara todo el contenido de la cadena por el que le indiquemos.
# Al remplazar todo el contenido solo hay que pasarle de argumento el nuevo contenido
cadena5 = "Esta cadena va a ser remplazada por completo"
puts cadena5
puts cadena5.replace("Nuevo contenido de la cadena gracias al metodo replace")
# Para eliminar caracteres de una cadena usamos el metodo delete y le pasamos el caracter o caracteres a eliminar
puts "Ejemplo".delete("E")
puts "Ejemplo".delete("plo")