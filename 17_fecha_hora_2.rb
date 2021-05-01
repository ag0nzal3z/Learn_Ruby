# Clase Date

# La clase date es para representar solo fechas
# Para trabajar con objetos de la clase date es necesario requerirla
# La instruccion require indica a nuestro archivo que
# importe alguna clase que no se encuentra en nuestro contexto
require 'date'
puts Date.today
# Crear una fecha personalizada
fecha_confirmacion = Date.new(2002, 7, 23)
puts fecha_confirmacion
# Podemos preguntar por un dia de la semana como haciamos con time
puts fecha_confirmacion.sunday?
# Podemos obtener el año, mes y dia
puts fecha_confirmacion.year
puts fecha_confirmacion.month
puts fecha_confirmacion.day
# Podemos saber la semana a la que corresponde la fecha
puts fecha_confirmacion.cweek
# Podemos obtener fechas anteriores y posteriores
puts fecha_confirmacion.prev_day(5)
puts fecha_confirmacion.next_day(5)
# Tambien se puede hacer con los meses y los años
puts fecha_confirmacion.prev_month(5)
puts fecha_confirmacion.next_month(5)
puts fecha_confirmacion.prev_year(5)
puts fecha_confirmacion.next_year(5)


# Subclase DateTime

# Datetime nos permite trabajar con fechas historicas y con horas
fecha_hora = DateTime.new
puts fecha_hora
fecha_hora_historica = DateTime.new(1230, 10, 6, 10, 15, 40, "-01:00")
puts fecha_hora_historica
# Se pueden obtener partes del tiempo
puts fecha_hora_historica.hour
puts fecha_hora_historica.min
puts fecha_hora_historica.sec