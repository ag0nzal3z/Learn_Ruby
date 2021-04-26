# Comparacion de cadenas

# Comparamos la palabra 1 con la 2, en este caso no son iguales con lo que es false
palabra1 = "Ejempo"
palabra2 = "Ejemplo"
puts palabra1.eql?(palabra2)
# Tambien se puede comparar con ==
puts palabra1 == palabra2

# Para que sean iguales tienen que tener el mismo numero de caracteres
# con lo que si tienen un espacio de mas no seran iguales
puts "Ejemplo".eql?("Ejmplo ")
puts "Ejemplo".eql?("Ejemplo")

# Para que dos cadenas sean iguales, tienen que tener los mismos caracteres,
# esto quiere decir que si tienen una letra en mayuscula, un acento o espacios 
# y la otra cadena no, la comparacion nos devolvera false
palabra3 = "Camion"
palabra4 = "camion"
puts palabra3.eql?(palabra4)
palabra5 = "camión"
palabra6 = "camion"
puts palabra5.eql?(palabra6)

# Las cadenas se pueden tratar para luego compararlas
palabra7 = "Ejemplo "
palabra8 = " ejemplo "
puts palabra7.upcase.strip.eql?(palabra8.upcase.strip)


# Concatenecion

# Para concatenar podemos usar 3 metodos: + << concat
# Metodo +
marca = "Toyota"
modelo = "Prius"
color = "Azul"
caracteristicas_completas = marca + " " + modelo + " " + color
puts caracteristicas_completas

# Metodo <<
# Este metodo solo permite un argumento, por eso se llama varias veces a <<
frase = "Hoy hace un dia soleado"
frase << " la gente pasea por la calle" << " y las terrazas estan llenas"
puts frase
# Ademas permite la notacion ascii que se remplazara por el caracter correspondiente.
# En este caso el numero 46 corresponde con el .
puts frase << 46

# Metodo concat, este metodo acepta multiples argumentos
frase2 = "El sabado tengo que ir a comprar"
frase2.concat(" ire al mercado", "a por fruta y pescado", 46)
puts frase2

