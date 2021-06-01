# EXCEPCIONES

# Una excepcion en Ruby es un objeto de tipo Exception o subclases de Exception, 
# que se genera cuando hay un error en tiempo de ejecucion
# Un objeto Exception contiene informacion sobre el tipo de la excepcion, 
# una descripcion e informacion de rastreo
# Para manejar una o mas excepciones usamos el metodo rescue
# El control de las excepciones evitara la interropcion del programa
def dividir(n1, n2)
    n1 / n2
rescue ZeroDivisionError
    "El numero #{n1} no se puede dividir entre numero #{n2}"
end
puts dividir(25, 0)

# Puede haber mas de un metodo rescue para manejar distintos tipos de excepciones
def division num1, num2
    division = num1 / num2
rescue ZeroDivisionError
    "El numero #{num1} no se puede dividir entre numero #{num2}"
rescue TypeError
    "Uno de los numeros no tiene un valor entero"
end
puts division(50, 0)
puts division(3, "1")

# Se puede ser mas expecifico y poner una excepcion solo a un bloque de codigo
begin
    # Codigo que podria causar el error
rescue # Tipo excepcion
    # Control de la excepcion
end

# El metodo raise nos permite lanzar una excepcion de manera intencionada
# para ser tratada mas adelante
# la variable e se utiliza para mapear el objeto Exception para obtener informacion sobre la excepcion generada
# el metodo message nos devuelve lo que especifiquemos en raise
def dividir dividendo, divisor
    raise ZeroDivisionError, "No es posible realizar la division entre cero" if divisor.zero?
    dividendo / divisor
rescue ZeroDivisionError => e
    puts "#{e.message} poner otro divisor que no sea 0 "
    divisor = gets.chomp.to_i
    retry
end
division = dividir 500, 0
puts division

# Se puede usar un solo metodo else despues de rescue en el control de una excepcion para
# ejecutar algo cuando no se genere una excepcion
# Y se puede usar el metodo ensure para realizar algo sin importar lo que suceda. Se ejecutara ocurra o no,
# una excepcion
# Hay que respetar el siguiente orden:
begin
    # Codigo que podria generar una excepcion
rescue
    # Se maneja la excepcion especificada
else
    # Solo se ejecuta esta parte cuando no se produce ninguna excepcion
ensure
    # Haya o no Excepcion, esta parte siempre se realizara
end
