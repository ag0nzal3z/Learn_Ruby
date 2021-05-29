# CLASES
# Una clase se define con class, para los nombres de las clases
# se usa la notacion CamelCase

=begin
class NombreClase
    atributos
    metodos
end
=end

class Ejemplo
    # Atributos
    # Metodos
end

# Podemos usar el metodo class y instance_of? para saber el tipo de objeto
prueba = Ejemplo.new
puts prueba.class
puts prueba.instance_of? Ejemplo

class Persona
    def saludar
        "Buenos dias"
    end
    def despedirse
        "Hasta la proxima"
    end
end

alberto = Persona.new
puts alberto.saludar
puts alberto.despedirse

# ATRIBUTOS
# Las variables de instancia comienzan por @ , pueden ser usadas
# en todos los metodos dentro de la misma clase, pueden recibir valores
# por medio de otro metodo. Se generan con attr_accessor
class Programador
    attr_accessor :aptitud_profesional
end
alberto = Programador.new
alberto.aptitud_profesional = "Autoaprendizaje"
puts alberto.aptitud_profesional

# Para mostrar usamos attr_reader
# Para asignar attr_writer
# Los atributos se inicializan con initialize
class Usuario
    attr_reader :nombre, :edad, :sexo, :estatura, :peso

    def initialize(nombre, edad, sexo, estatura, peso)
        @nombre = nombre
        @edad = edad
        @sexo = sexo
        @estatura = estatura
        @peso = peso
    end
end
nerea = Usuario.new("Nerea", 40, "Mujer", 1.70, 67)
puts nerea.nombre
puts nerea.sexo

# Hay casos que los objetos tendran que tener las mismas caracteristicas 
class Juguete
    attr_reader :nombre, :altura, :anchura, :largo, :peso, :material
    attr_accessor :color

    def initialize
        @nombre = "Triciclo"
        @altura = "40 cm"
        @anchura = "60 cm"
        @largo = "110 cm"
        @peso = "10 kg"
        @color = "Azul"
        @material = "Metal"
    end
end

juguete1 = Juguete.new
puts juguete1.color
# Al usar attr_accessor para color, podremos cambiar el color a los objetos
juguete2 = Juguete.new
puts juguete2.color
juguete2.color = "Verde"
puts juguete2.color


# Un argumento puede ser opcional al darle un valor por defecto
class Registro
    attr_accessor :user, :email, :pass

    def initialize(user, email = nil, pass)
        @user = user
        @email = email
        @pass = pass
    end
end
usuario1 = Registro.new("Pedro", "pedrito@email.es", "4364")
usuario2 = Registro.new("Vanesa", "g3y5")
puts usuario2.user
puts usuario2.email
puts usuario2.pass

# Ejemplo de una clase con varios metodos
class Humano
    attr_writer :nombre, :primer_apellido, :segundo_apellido, :fecha_nacimiento

    def initialize(nombre, primer_apellido, segundo_apellido, fecha_nacimiento)
        @nombre = nombre
        @primer_apellido = primer_apellido
        @segundo_apellido = segundo_apellido
        @fecha_nacimiento = fecha_nacimiento
    end

    def calcular_edad
        fecha_actual = Time.now
        edad = fecha_actual.year - @fecha_nacimiento.year
    end

    def nombre_completo
        nombre_completo = @nombre.strip.capitalize + " " + @primer_apellido.strip.capitalize + " " + @segundo_apellido.strip.capitalize
    end

    def datos_completos
        "#{nombre_completo} tiene #{calcular_edad} años de edad"
    end
end

fecha_nacimiento = Time.new(1987, 9, 20)
leticia = Humano.new("Leticia", "Perez", "Naranjo", fecha_nacimiento)
puts leticia.nombre_completo
puts leticia.calcular_edad
puts leticia.datos_completos