# ITERADORES
# Iterar significa repetir algo varias veces
# Los iteradores tienen un proposito bien definido

# TIMES
# Repite n veces
10.times {puts "Esto es el iterador times"}

# UPTO
# Repite n veces, desde un numero hasta otro. Este iterador recibe un argumento
1.upto(10) {|i| puts "El numero es: #{i}"}

# DOWNTO
# Lo contrario al anterior, se le da un numero y decrece hasta el numero del argumento
10.downto(0) do |i|
    unless i.zero?
        puts "Te queda #{i}"
    else
        puts "Se acabo el tiempo"
    end
end

