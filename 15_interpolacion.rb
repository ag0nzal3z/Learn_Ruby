# Interpolacion

# Para interpolar usamos #{} de esta manera podemos insertar datos dentro de una cadena
num = 10
num1 = 20
cadena = "#{num} el numero anterior ha sido interpolado y el siguiente tambien #{num1}"
puts cadena
puts "La suma de estos numeros es una interpolacion #{num + num1}"
# Se pueden usar metodos dentro de una cadena gracias a la interpolacion
vehiculo = "Bicicleta"
cadena1 = "Este vehiculo se llama: #{vehiculo.upcase}"
puts cadena1
# Tambien se pueden interpolar estructuras de control
estado = "Feliz"
cadena2 = "Hoy estoy #{if estado == "Feliz" then ":)" else ":(" end}"
puts cadena2


# Percent String

# Las cadenas con comillas dobles o simples se pueden representar usando
# %Q equivale a "" se usan con {}, [], () ejemplo %Q{}
# %q equivale a '' se usan con {}, [], () ejemplo %q{}
cadena_llaves = %Q{Esto es una cadena usando llaves}
cadena_corchetes = %Q[Esto es una cadena usando corchetes]
cadena_parentesis = %Q(Esto es una cadena usando parentesis)
puts cadena_llaves 
puts cadena_corchetes 
puts cadena_parentesis

# Here Documents o Heredocs

# En el caso de tener grandes bloques de texto se utiliza HEREDOC
texto = <<HEREDOC
Los textos expositivos tienen como característica principal que intentan transmitir 
conocimientos técnicos a un público que no está especializado en dicho ámbito. 
Por lo tanto, el emisor debe adecuar su mensaje para que sea comprensible. 
Además, los textos expositivos deben ser objetivos. 
Ejemplos de textos expositivos son los libros de divulgación científica.
HEREDOC
puts texto
# Se le puede dar cualquier nombre, no es neceario usar heredoc
texto2 = <<PRUEBA
Los textos argumentativos son aquellos en los que el emisor intenta convencer
o persuadir al otro de que su opinión es la correcta, aplicando, para ello,
razonamientos lógicos y explicaciones. Un ejemplo de texto argumentativo podría ser
el texto que llevan los candidatos a presidente cuando realizan un debate.
PRUEBA
puts texto2
# Se puede usar - delante de HEREDOC para no tener que alinear
# el cierre totalmente a la izquierda
texto = <<-HEREDOC
Los textos expositivos tienen como característica principal que intentan transmitir 
conocimientos técnicos a un público que no está especializado en dicho ámbito. 
Por lo tanto, el emisor debe adecuar su mensaje para que sea comprensible. 
Además, los textos expositivos deben ser objetivos. 
Ejemplos de textos expositivos son los libros de divulgación científica.
    HEREDOC
puts texto
# Si usamos ~ delante de HEREDOC tambien respetara la sangrias del texto
texto2 = <<~PRUEBA
Los textos argumentativos son aquellos en los que el emisor intenta convencer
o persuadir al otro de que su opinión es la correcta, aplicando, para ello,
razonamientos lógicos y explicaciones. 
        Un ejemplo de texto argumentativo podría ser:
el texto que llevan los candidatos a presidente cuando realizan un debate.
            PRUEBA
puts texto2
