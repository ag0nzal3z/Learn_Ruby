# DIRECTORIOS

# Creacion de directorios
# Usaremos FileUtils
nombre_carpeta = 'carpeta_ejemplo'
require 'fileutils'
FileUtils.mkdir(nombre_carpeta)
# Si quisieramos crear una ruta completa de directorios usariamos File.join
# para crear la ruta de directorios y luego FileUtils para crearlos, junto
# con mkdir_p
directorio = File.join("prueba", "varias", "carpetas", nombre_carpeta)
FileUtils.mkdir_p(directorio)
# Para saber si exite un directorio usamos el metodo directory?
puts File.directory?(directorio)
