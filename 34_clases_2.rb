# HERENCIA  
# La clase que hereda se llama superclase o clase padre.
# La clase que recibe la herencia se llama subclase o clase hija
# Las clases heredan los atributos y lo metodos

class Animal
    attr_accessor :nombre, :sexo

    def initialize
        puts "Animal"
    end

    def comer(alimento)
        puts "Comiendo #{alimento}"
    end
end

class Vertebrado < Animal
    # tipo: pez, mamifero, reptil, ave, anfibio
    attr_accessor :tipo

    def initialize
        puts "Vertebrado"
    end
end

animal = Vertebrado.new
animal.nombre = "Leon"
animal.tipo = "mamifero"
puts animal.nombre
puts animal.tipo
puts animal.comer("Carne")

# Sobreescritura de metodos
# El declarar un metodo con el nombre igual que la superclase hace que la subclase lo sobrescriba
# Con la sobrescritura la superclase no se vera afectada
class Mamifero < Vertebrado
    def comer(alimento)
        unless alimento.eql?("Leche")
            puts "Comiendo #{alimento}"
        else
            puts "Es una cria, se alimenta de leche materna"
        end
    end
end

animal2 = Mamifero.new
animal2.comer("Leche")

# Al usar super dentro de un metodo estamos diciendo que busque ese metodo en la clase padre
# Si a super no se le pasan argumentos, cogera los del metodo en que se encuentra
# Para indicar que el metodo de la clase padre no recibe argumentos se usa super()

class Leon < Mamifero
    def initialize
        @sexo = sexo
        @nombre = "Leon"
        @tipo = tipo
    end

    def comer(alimento = "carne")
        super
    end

    def atacar
        puts "Gruñido"
    end
end

leon = Leon.new
leon.comer
leon.comer("Antilope")
