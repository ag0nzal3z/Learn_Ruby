# En este archivo importaremos el modulo del otro fichero
# Para importar modulos se usa require o require_relative
require './37_modulos_2.rb'

class Saludos
    include Mensajes
end

hola = Saludos.new
hola.bienvenida