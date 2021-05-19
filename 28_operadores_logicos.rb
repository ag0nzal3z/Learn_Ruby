# Operadores Logicos
# Operador Negacion !
# Operador Conjuncion &&
# Operador Disyuncion ||

# Operador !
# Cuando se aplica convierte un true en un false y un false en un true
puts !true
puts !false

edad = 35
puts !(edad > 30)

puts !("Alberto".start_with?("A"))


# Operador &&
# Solo sera verdadero si ambos valores son verdaderos
puts true && true
puts true && false
puts false && true
puts false && false

nombre = "Alberto"

puts (nombre.length == 7) && (edad > 30)


# Operador || 
# Basta con que uno de los valores sea verdadero para que el resultado sea verdadero
# Siempre sera true excepto cuando ambos sean false
puts true || true
puts true || false
puts false || true
puts false || false

puts (nombre.length == 7) || (edad > 40)

# Mas de un operador logico en una expresion
# Hay que seguir el orden de precedencia
# () ! && ||
# Si existe un operador del mismo nivel de prioridad varias veces, se evalua primero el que esta mas a la izquierda
puts !false && (true || false )

color_semaforo = "Verde"
no_hay_vehiculos = true
ambulancia_con_luces = !false
pasar_paso_cebra_andando = if (color_semaforo == "Verde" || no_hay_vehiculos) && ambulancia_con_luces
    puts "Se puede cruzar por el paso de cebra"
else
    puts "No puedo cruzar porque es peligroso"
end
print pasar_paso_cebra_andando
