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

# While y Until como modificadores
num = 0
puts "la variable num, solo se modifica mientras sea menor que 10"
num += 1 while num < 10

num = 0
puts "la variable num, solo se modifica mientras sea mayor que 10"
num += 1 until num > 10


# Ciclo BEGIN-WHILE
=begin
begin
    Las instrucciones sse repetiran al menos una vez
end while (condicion)
=end
puts "Que numero estoy pensando"
n = Random.new
nume = n.rand(1..10)
begin
    numero_usuario = gets.chomp.to_i
    mensaje = nume == numero_usuario
    puts mensaje
end while nume != numero_usuario


usuario = "Alberto"
pass = "1234506789"
puts "Ingresa tu nombre de usuario"
begin
    usu_intro = gets.chomp
    if usu_intro == usuario
        puts "Introduce la pass"
        begin
            pass_intro = gets.chomp
            if pass_intro == pass
                puts "Bienvenido #{usuario}"
            else
                puts "Pass incorrecta"
            end
        end until pass == pass_intro
    else
        puts "Usuario incorrecto"
    end
end until usuario == usu_intro


# Declaraciones BREAK, NEXT, REDO
# Un ciclo puede detenerse bruscamente, aun cuando la condicion se esta cumpliendo
# BREAK: Interrumpe la ejecucion del ciclo
for numero in (1..10)
    numero *= 5
    break if numero == 25
    puts numero
end

# NEXT: Pasa a la siguiente repeticion
for numero in (1..10)
    numero *= 5
    next if numero == 25
    puts numero
end

# REDO: Rehace la iteracion actual
for numero in (1..10)
    numero *= 5
    redo if numero == 25
    puts numero
end
