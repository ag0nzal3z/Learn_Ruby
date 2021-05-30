# Tipos de metodos en una clase
# Por defecto todos los metodos son publicos
# Hay tres tipos: public, protected y private

class ejemplo
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

class ejemplo2
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


