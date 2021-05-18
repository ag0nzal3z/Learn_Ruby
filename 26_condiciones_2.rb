# case
# Se utiliza para evaluar multiples casos
# Si no se le pasa argumento se comporta como un if-elsif
=begin
case argumento
when (condicion)
    instrucciones que se ejecutaran si es el caso especificado
when (condicion)
    instrucciones que se ejecutaran si es el caso especificado
when (condicion, condicion)
    puede tener mas de una condicion, se separan por comas
else
    si no se cumple ningun when, se ejecutaran estas instrucciones
end
=end

# case como un if-elsif
# Para usar case como un if-elsif hay que usarlo sin argumento
numero = 1
o_numero = if numero.is_a?(String) then "Es una cadena"
elsif numero.is_a?(Float) then "Es un numero decimal"
elsif numero.is_a?(Integer) then 'Es un numero entero'
elsif numero.is_a?(Time) then "Es una fecha"
elsif numero.is_a?(Array) then "Es un arreglo"
elsif numero.is_a?(Hash) then "Es un hash"
else "Es otro tipo de dato"
end
puts o_numero

# Usando case-when
# El case apaorta legilibilidad
# CUANDO el numero es un integer ENTONCES "es un numero entero"
o_numero = case 
when numero.is_a?(String) then "Es una cadena"
when numero.is_a?(Float) then "Es un numero decimal"
when numero.is_a?(Integer) then 'Es un numero entero'
when numero.is_a?(Time) then "Es una fecha"
when numero.is_a?(Array) then "Es un arreglo"
when numero.is_a?(Hash) then "Es un hash"
else "Es otro tipo de dato"
end
puts o_numero

# Ejemplo: Saber dia de la semana
fecha = Time.now
dia_semana = case
    when fecha.monday? then "Lunes"
    when fecha.tuesday? then "Martes"
    when fecha.wednesday? then "Miercoles"
    when fecha.thursday? then "Jueves"
    when fecha.friday? then "Viernes"
    when fecha.saturday? then "Sabado"
    when fecha.sunday? then "Domingo"
end
puts dia_semana

# case con argumento
# chomp es un método para strings y gets almacena strings que provienen del teclado. 
# El problema es que gets almacena lo escrito y el caráter '\n' (retorno de carro); 
# chomp lo que hace es borrar el carácter: '\n'
puts "Ingresa codigo del producto"
codigo = gets.chomp.to_i
producto = case codigo
    when 1 then "Pipas"
    when 2 then "Maices"
    when 3 then "Pistachos"
    when 4 then "Anacardos"
    when 5 then "Avellanas"
    when 6 then "Nueces"
    when 7 then "Piñones"
    when 8 then "Pasas"
    when 9 then "Chucherias"
    when 10 then "Agua"
    when 11 then "Cocacola"
    when 12 then "Naranjada"
    when 13 then "Cerveza"
    when 14 then "Limonada"
    when 15 then "Nestea"
    when 16 then "Aquarius"
    else " No hay ningun producto con ese codigo"
end
puts producto

# USar rangos con case
puts "Introduce la puntuacion obtenida"
puntuacion = gets.chomp.to_i
regalo = case puntuacion
    when 0..10 then "No tienes ningun regalo"
    when 11..20 then "Un posavasos de regalo"
    when 21..30 then "Un mechero de regalo"
    when 31..60 then "Un peluche a elegir de regalo"
    when 61..100 then "Una cometa de regalo"
    when 101..150 then "Un vale por 20 euros de regalo, para gastar en bebidas y comida"
    when 151..200 then "Un vale por 30 euros de ragalo para gastar en lo que se quiera"
    when 201..210 then "Poner tu foto en la pared de la fama y 50 euros para gastar en lo que quieras"
end 
puts regalo