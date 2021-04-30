# Clase Time

# La clase time sirve para representar fechas y horas
# No puede representar nada anterior a 1 de enero de 1970
# El objeto time pude recibir como maximo 7 argumentos
# año, mes, dia, horas(formato 24h), minutos, segundos y zona horaria
tiempo = Time.new(2021, 4, 29, 19, 47, 12, "-00:00")
puts tiempo
# Para obtener la hora actual basta con no pasar argumentos
hora_actual = Time.new
puts hora_actual
# Tambien se puede usar el metodo now
puts Time.now
# Hay metodos para obtener el año, mes o dia
puts tiempo.year
puts tiempo.month
puts tiempo.day
puts hora_actual.year
puts hora_actual.month
puts hora_actual.day
# Los siguientes metodos devuelven el numero de dia en relacion con la semana, mes o año
puts tiempo.wday
puts tiempo.mday
puts tiempo.yday
puts hora_actual.wday
puts hora_actual.mday
puts hora_actual.yday
# Se puede preguntar al time si el dia corresponde con uno de la semana
puts hora_actual.monday?
puts hora_actual.tuesday?
puts hora_actual.wednesday?
puts hora_actual.thursday?
puts hora_actual.friday?
puts hora_actual.saturday?
puts hora_actual.sunday?
# Tambien tenemos los metodos para hora, minuto, segundo, microsegundo, nanosegundo
# Hay que tener encuenta que si no contiene la informacion nos devolvera 0
# Suele ocurrir para microsegundo y nanosegundo
puts hora_actual.hour
puts hora_actual.min
puts hora_actual.sec
puts hora_actual.usec
puts hora_actual.nsec



