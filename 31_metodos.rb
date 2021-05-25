# METODOS

# Un metodo es una agrupacion de codigo que realiza una tarea
# se definen con la palabra reservada def y son el equivalente a las funciones en otros lenguajes.
=begin   
def nombre_metodo
    # Instrucciones del metodo
end
=end

def hola_mundo
    puts "Esto es un metodo"
end
# Para ejecutar el metodo hay que poner el nombre que le hemos dado
hola_mundo

# Los metodos pueden tener alias, para crear un alias de un metodo usamos "alias"
# seguido del nombre del alias y seguido del metodo del que sera alias
=begin
alias Alias_metodo metodo_del_que_sera_alias
=end
alias mi_primer_alias hola_mundo
mi_primer_alias
mi_primer_alias
mi_primer_alias


# A los metodos les podemos pasar argumentos, los argumentos se separan por comas
# los argumentos se usan en el cuerpo del metodo, son el equivalente a variables locales
def suma(n1, n2)
    sum = n1 + n2
end
puts suma(1, 2)
puts suma(22, 53)

# Podemos tener argumentos posicionales con un valor por defecto
# si no le pasamos ese argumento, tomara el valor que ya le hemos dado
# si asignamos un valor al argumento este valor sustituira al de por defecto
def sumar(n1, n2 = 5)
    sum = n1 + n2
end
puts sumar(1)
puts sumar(10, 20)

def nombre_edad(n = "Alberto", e = 35)
    puts "Mi nombre es: #{n} y tengo: #{e} años"
end
nombre_edad
nombre_edad("Pichon", 23)

# Se pueden crear argumentos con palabra clave, con los cuales no importara el orden
# ya que se les llama por el nombre
def sumar(n1: 3, n2: 10)
    puts sum = n1 + n2
end
sumar(n1:15, n2:30)
sumar(n2:30, n1:15)

def nombre_edad(n:"Alberto", e:35)
    puts "Mi nombre es: #{n} y tengo: #{e} años"
end
nombre_edad(e:47, n:"Margarita")

# Se pueden usar array como argumentos
# se utiliza el prefijo *
def suma_varios_numeros(*numeros)
    puts numeros.sum
end
suma_varios_numeros(3, 7, 10, 20, 1, 13, 46)

array = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
def dias_semana(dias)
    dias.each {|elemento| puts elemento}
end
dias_semana(array)

# Se pueden usar hash como argumento
# se utiliza el prefijo **
capitales = {Paris: "Paris", Alemania: "Berlin", España: "Madrid"}
def pais_capital(**datos)
    datos.each_pair {|k, v| puts "Pais: #{k} Capital: #{v}" }
end
pais_capital(capitales)
