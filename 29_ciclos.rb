# CICLOS

# Ciclo FOR
=begin
for value in(objeto) do
    Instrucciones que se repetiran n veces
end
=end

for value in(1..10) do
    puts "Esto es un ciclo for"
end

for i in(1..100) do
    puts "#{i}"
end

dias = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "domingo"]
for i in(dias) do
    puts "#{i}"
end


# Ciclo WHILE
=begin
while (condicion) do
    Intrucciones que se repetiran mientras la condicion sea verdadera
end
=end

contador = 1
while (contador <= 10) do
    puts "Esto es un ciclo while"
    contador += 1
end

z = 1
while z <= 20
    puts "El valor es: #{z}"
    z += 1
end

# Ciclo UNTIL
=begin
until (condicion) do
    Instrucciones que se repetiran mientras la condicion sea falsa
end
=end

dias = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "domingo"]
until dias.empty?
    puts "Ya se ha terminado el: #{dias.shift}"
end

