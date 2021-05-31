# MODULOS

# Para definir un modulo se usa module
# Se utiliza la nomenclatura CamelCase
module EjemploModulo
    # Igual que las clases
    puts "Esto es un modulo"
end
# Los modulos a diferencia de las clases no permiten la herencia
# y tampoco se pueden crear instancias
# Los modulos sirven para evitar colisiones de nombre 
# y para agregar funcionalidades a las clases (Mixin)

# Si dos clases en Ruby se llaman de la misma manera
# se sobrescribiran (monkey patch)

module Animal
    class Gato
        def initialize
            puts "Soy un gato"
        end
        def comer(comida)
            if comida == "Atun"
                puts "Me encanta el Atun"
            end
        end
        def saltar
            puts "Zass"
        end
    end
end

# Para crear objetos de una clase dentro de un modulo usamos ::
mochi = Animal::Gato.new
mochi.comer("Atun")

# En el caso de que la clase este dentro de dos modulos o mas, seria lo mismo
# habria que seguir el orden de los modulos separandolos por ::
module Mamifero
    module Humano
        class Mujer
            puts "Esto es una clase dentro de dos modulos"
        end
    end
end
lourdes = Mamifero::Humano::Mujer.new
lourdes

# Para las constantes seria lo mismo
module TestConstantes
    PI = 3.14
    G = 9.8
end
puts TestConstantes::PI

# MIXINS
# Agrega funcionalidades a las clases al incluir modulos en ellas
module Piar
    def comunicarse
        puts "Pio!! Pio!!!"
    end
end

module Alimentar
    def engullir
        puts "Estoy comiendo migas de pan"
    end
end

class Pichon
    include Piar
    include Alimentar
    def initialize
        puts "Soy un Pichon"
    end
end
pajaro1 = Pichon.new
pajaro1.comunicarse

