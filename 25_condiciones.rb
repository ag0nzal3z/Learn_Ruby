# Condiciones

# if
=begin
if (condicion) then
    # Instrucciones a ejecutar si la condicion se cumple
end
=end

a = 5
if (a == 5) then
    puts "Se cumple la condicion"
end

# if - else
=begin
if (condicion) then
    # Instrucciones a ejecutar si la condicion se cumple
else
    # Instrucciones a ejecutar si no se cumple la condicion
end
=end

edad = gets
if (edad.to_i >= 18) then
    puts "Eres mayor de edad"
else
    puts "No eres mayor de edad"
end

# El resultado de if se puede guardar en una variable
lunes = true
tarea = if lunes then "Toca comprar comida" else "No hay que comprar comida" end
puts tarea

# Para if se puede usar el operador ternario
# Un operador ternario es un operador que toma tres argumentos. 
# Este operador ternario puede pasar varias líneas de código a una sola línea
=begin
condicion ? instruccion_if : instruccion_else
=end

lunes = true
tarea = lunes ? "Toca comprar comida" : "No hay que comprar comida"
puts tarea

# elsif
=begin
if (condicion) then
    # Instrucciones a ejecutar si la condicion if se cumple
elsif
    # Instrucciones que se ejecutaran si la condicion elsif se cumple
else
    # Instrucciones a ejecutar si no se cumple ninguna condicion if o elsif anteriores
end
=end

dia = "Miercoles"
if dia.eql?("Lunes") then
    puts "El dia elegido es el Lunes"
elsif dia.eql?("Martes")
    puts "El dia elegido es el Martes"
elsif dia.eql?("Miercoles")
    puts "El dia elegido es el Miercoles"
elsif dia.eql?("Jueves")
    puts "El dia elegido es el Jueves"
elsif dia.eql?("Viernes")
    puts "El dia elegido es el Viernes"
else 
    puts "El dato introducido no es un dia de la semana"
end