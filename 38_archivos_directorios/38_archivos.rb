# ARCHIVOS
# Un archivo se puede representar en Ruby como un objeto
# Para trabajar con archivos se usan los siguientes metodos:
# read, write y open
# Los modos en los que se puede abrir un archivo son:
# de solo lectura, solo escritura o lectura y escritura
# r -> Solo lectura
# w, a -> Solo escritura
# r+, w+, a+ -> Lectura y escritura
archivo = File.open('archivo_lectura.txt', 'r')
archivo.close
# 'r' se puede omitir, ya que es el argumento por defecto
# Despues de abrir un archivo, y haberlo usado, hay que cerrarlo
archivo = File.open('archivo_lectura.txt', 'r')
puts archivo.readline
archivo.close
# Si se usa como un bloque se cerrara al finalizar
# Con el metodo gets obtenemos una linea del archivo
# los archivos se abren como texto plano
archivo = File.open('archivo_lectura.txt', 'r') do |file|
    while archivo = file.gets
        puts archivo
    end
end
# El metodo file nos permite comprobar si el archivo existe
nombre_archivo = "archivo_lectura"
extension = "txt"
fichero = #{nombre_archivo}.#{extension}
if File.file?("#{nombre_archivo}.#{extension}")
    puts "El archivo existe, procedemos a su lectura"
    archivo = File.open('archivo_lectura.txt', 'r') do |file|
        while archivo = file.gets
            puts archivo
        end
    end
else
    puts "El archivo no existe"
end

# Si abres un archivo con el modo escritura w, su contendio se borrara,
# para luego escribir en el, y si el archivo no exite lo creara
archivo_escritura = File.open('archivo_escritura.txt', 'w')
archivo_escritura.write("Esto es una prueba de escritura en un archivo \n")
archivo_escritura.close
# Si el archivo no existe puedes usar el metodo new
# El otro modo de escritura es a, con este modo no se borra lo que ya existe dentro
# del archivo, lod nuevos datos se agregaran al final del archivo, si no existe el archivo
# se creara.
archivo_escritura = File.open('archivo_escritura.txt', 'a')
archivo_escritura.write("Esta linea se agregara al final de archivo")
archivo_escritura.close

# El modo w+ lee y escribe al inicio del archivo
archivo_lectura_escritura = File.open('archivo_rw.txt', 'w+') {|file| file.write("Esto es una prueba de escritura en fichero \n")}
# El modo r+ se comienza al principio del archivo sin truncar lo que este contiene
# con r+ el archivo debe de existir
archivo_lectura_escritura = File.open('archivo_rw.txt', 'r+') {|file| file.write("Empiezo y no trunco")}
# El modo a+ hace que se agregue despues del ultimo
archivo_lectura_escritura = File.open('archivo_rw.txt', 'a+') {|file| file.write("Esto se agregara despues de lo que ya hay")}

# El metodo basename nos devuelve el nombre del fichero y su extension
puts File.basename archivo_escritura
# Si le pasamos como argumento la extension solo nos devolvera el nombre
puts File.basename archivo_escritura, '.txt'
# El metodo dirname nos disce el directorio donde esta el archivo
puts File.dirname archivo_escritura
# El metodo extname nos devuelve la extension del archivo
puts File.extname archivo_escritura

# El modulo find nos permitira buscar archivos, usando el metodo find o prune
require 'find'
Find.find '.' do |path|
    puts path
end

# Se puede usar para contar el numero de archivos con una extension
n = 0
ruta = '.'
Find.find(ruta) do |path|
    if File.extname(path) == '.txt'
        n += 1
    end
end
puts n