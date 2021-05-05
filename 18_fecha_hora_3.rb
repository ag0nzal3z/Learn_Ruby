# Formateo de Fechas y Horas

=begin
El formato predeterminado de una fecha es AAAA-MM-DD, pero se puede modificar usando el metodo strftime
Hay directivas para la fecha, hora, zona horaria, dias laborales...
En el metodo strftime, todo lo que no sea directiva, aparecera en el resultado final, ejemplo /
=end

fecha_actual = Time.new
puts fecha_actual
puts fecha_actual.strftime('%d/%m/%y')


# Comparacion de Fechas y Horas

# Las Fechas se usan como criterio de busqueda
fecha_limite = Time.new(2021, 5, 5, 20, 0, 0, "+02:00")
entrega_lucio = Time.new(2021, 5, 2, 20, 0, 0, "+02:00")
entrega_margarita = Time.new(2021, 5, 6, 20, 0, 0, "+02:00")
puts entrega_lucio <= fecha_limite
puts entrega_margarita <= fecha_limite
