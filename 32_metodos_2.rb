# A los metodos se les puede enviar bloques de codigo
# un bloque de codigo es el que se encuentra entre {} o entre do y end
10.times {puts "Buenos dias"}

10.times do
    puts "Buenos dias"
    puts "Que dia mas bueno hace"
end

def ejemplo
    yield
end
ejemplo {puts "Esto es un ejemplo de bloque de codigo, yield se sutituye por el bloque"}

# Al utilizar yield hay que pasarle un bloque de codigo, si no dara un error
# para solucionar eso se utiliza block_given?
def ejemplo_solucion_error
    if block_given?
        yield
    else
        puts "No se ha pasado ningun bloque de codigo"
    end
end
ejemplo_solucion_error
# Si no hubieramos usado block_given? nos hubiera devuelto el siguiente error
=begin
        1: from ./32_metodos_2.rb:19:in `<main>'
./32_metodos_2.rb:11:in `ejemplo': no block given (yield) (LocalJumpError)
=end

# Los bloques pueden recibir argumentos, estos argumentos van entre ||
# Los bloques no son objetos con lo que no se pueden asignar a variables
# Los bloques se pueden convertir en objetos usando la clase Proc o la clase lambda
bloque = Proc.new {puts "Hola ahora este bloque es un objeto"}
bloque2 = lambda {puts "Hola ahora este bloque es un objeto"}
# En Ruby no se puede pasar una funcion a otra funcion. Pero si objetos Proc
# Para pasar de un objeto tipo Proc a un bloque usamos &
def ejemplo_proc_bloque
    if block_given?
        yield
    else
        puts "No se ha pasado ningun bloque de codigo"
    end
end
ejemplo_proc_bloque &bloque
ejemplo_proc_bloque &bloque2

# RECURSIVIDAD: es cuando un metodo se llama a si mismo
# La recursividad requiere mas recursos del sistema
# La recursividad tarda menos tiempo a costa de consumir mas recursos
def factorial(n)
    n.zero? ? 1 : n * factorial(n -1)
end
puts factorial(7)
