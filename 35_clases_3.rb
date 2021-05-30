# Tipos de metodos en una clase
# Por defecto todos los metodos son publicos
# Hay tres tipos: public, protected y private

class Ejemplo
    def ejemplo_publico
        puts "Esto es un ejemplo de metodo publico"
    end

    protected
    # Todos los metodos que haya dentro de protected seran protegidos
    def ejemplo_protegido
    end

    private
    # Todoslos metodos que haya dentro de private seran privados
    def ejemplo_privado
    end
end

# Otra manera de definir el tipo de metodo, es pasarle a los metodos public, protected y private
# el nombre del metodo como simbolo

class Ejemplo2
    def metodo1
    end
    def metodo2
    end
    def metodo3
    end
    def metodo4
    end
    def metodo5
    end

    public :metodo1, :metodo2
    protected :metodo3, :metodo4
    private :metodo5
end

# Private: Los metodos privados solo pueden ser usados dentro de la misma clase
# Protected: Los metodos protegidos solo pueden ser usados dentro de las clases y subclases que los poseen

class Uno
    protected
    def m_protegido
        puts "Esto es un metodo protegido"
    end
    private
    def m_privado
        puts "Esto es un metodo privado"
    end
end
class Dos < Uno
    def metodo_ejemplo
        m_protegido
    end
end
ejem_protected = Dos.new
ejem_protected.metodo_ejemplo


# SINGLETON
# Los metodos de clase son definidos en la clase singleton
# tambien se puede llamar metaclass o eigenclass
# Una forma de definir un metodo en esta clase es usar self
# Hay varias maneras de usar Singlenton
class EjemSinglenton
    def metodo_instancia
        puts "Esto es un metodo de instancia"
    end
    def self.metodo_clase
        puts "Esto es un metodo de clase"
    end
end
# Esta manera es util si vas a definir varios metodos de clase
class EjemSinglenton2
    def metodo_instancia
        puts "Esto es un metodo de instancia"
    end
    class << self
        def metodo_clase
            puts "Esto es un metodo de clase"
        end
        def metodo_clase2
            puts "Esto es un metodo de clase"
        end
    end
end
# Esta forma es la menos usada
class EjemSinglenton3
    def metodo_instancia
        puts "Esto es un metodo de instancia"
    end
    def EjemSinglenton3.metodo_clase
        puts "Esto es un metodo de clase"
    end
end

# Las variables de instancia de definen con @ en cambio las variables de clase se definen con @@

class Usuarios
    @@numero = 0

    def initialize(user, pass, email)
        @user, @pass, @email = user, pass, email
        @@numero += 1
    end

    def resgistrarse
        puts "Se a creado el usuario correctamente, le llegara un email a la siguiente cuenta: #{@email}"
    end

    def self.numero_usuarios_registrados
        @@numero
    end
end

alberto = Usuarios.new("Alberto", "e3y4", "prueba@ruby.es")
Usuarios.new("Margarita", "1253r",  "mrita@ruby.es")
# Aqui podemos ver que cada usuario que se registra suma 1
usu_registrados = Usuarios.numero_usuarios_registrados
puts usu_registrados