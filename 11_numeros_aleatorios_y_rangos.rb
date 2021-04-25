# Numeros Aleatorios y Rangos

# La clase random la usaremos para generar un numero al azar
# Primero debemos de crear un objeto de la clase Random
random = Random.new
numero_entero_aleatorio = random.rand(10)
puts numero_entero_aleatorio

numero_flotante_aleatorio = random.rand(5.5)
puts numero_flotante_aleatorio

# El 0 esta incluido en los numeros aleatorios, pero el numero especificado como argumento no
# Esto quiere decir que en el caso del (10) los numeros seran desde el 0 hasta el 9

# Otra opcion es usar un rango de numeros
# (10..20)  (10...20)
# Si usamos .. el numero superior del rango puede salir
# Si usamos ... el numero superior del rango no saldra
numero_aleatorio = random.rand(10..20)
puts numero_aleatorio
numero_aleatorio2 = random.rand(10...20)
puts numero_aleatorio2

# Es posible crear rangos de numeros, fechas, cadenas de caracteres y otros elementos que permitan
# presentarse como un intervalo de valores
# (-5..-1)  ('a'..'i')

# Metodos de la clase Range
# Con min,max obtendremos el valor minimo y maximo que esten incluidos dentro del rango
# Con begin,end obtendremos el inicio y final del rango
# Con first,last lo primeros o ultimos elementos del rango, se puede pasar argumento ()
rango = (100..200)
puts rango.begin
puts rango.first
puts rango.min
puts rango.end
puts rango.last
puts rango.max
# Aqui podemos observar que el metodo max, nos devuelve el numero maximo que se puede generar
# en esta coso es 199 al usar ... en el rango
otro_rango = (100...200)
puts otro_rango.max

# El metodo size nos dice la cantidad de elementos de un rango dado
puts (10..20).size
# Con === comparamos un rango con un elemento, y nos devuelve un valor booleano
puts (10..20) === 15