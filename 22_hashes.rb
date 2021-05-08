# Hashes
=begin
Son estructuras a modo de un diccionario de datos con llaves unicas relacionadas con sus valores. 
Se conocen como Arrays asociativos
Se crean mediante {} o con el metodo Hash.new
Las claves se encuentran a la izquierda y los valores a la derecha
Se puede usar : o => para separar la clave del valor, tambien se usan simbolos
Cada valor tiene que tener una clave unica
=end

ejemplo_hash = {clave1: "valor1", clave2: "valor2", clave3: "valor3", clave4: "valor4"}
puts ejemplo_hash
ejemplo_hash2 = {"clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3", "clave4" => "valor4"}
puts ejemplo_hash2
ejemplo_hash3 = {:clave1 => "valor1", clave2: "valor2", "clave3" => "valor3", :clave4 => "valor4"}
puts ejemplo_hash3

# Simbolos
# Para crear un simbolo, se crea una variable y se le pone : delante.
# La caracteristica de un simbolo es que sera siempre el mismo objeto durante la ejecucion del programa
# garcias a esto, se ahorra memoria al usar simbolos para las claves en los hash
:simbolo

puts "ejemplo".object_id
puts "ejemplo".object_id
puts "ejemplo".object_id
puts "ejemplo".object_id

# Si comparamos el id de dos simbolos el resultado sera true, pero si comparamos los ids de dos cadenas el resultado
# sera false aunque tengan el mismo valor
puts :ejemplo.object_id == :ejemplo.object_id
puts "ejemplo".object_id == "ejemplo".object_id
