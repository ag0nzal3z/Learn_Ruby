# unless
# unless se comporta de la manera contraria a if
=begin
unless (condicion)
    Instrcucciones que se ejecutaran cuando
    la condicion sea un valor falso
else
    Instrucciones que se ejecutaran cuando
    la condicion sea verdadera
end
=end

unless false
    puts "La condicion tiene un valor falso"
else
    puts "La condicion tiene un valor verdadero"
end

dia = "Miercoles"
unless dia.eql?("Sabado")
    puts "Tengo que seguir trabajando"
end

numeros = [1, 2, 3, 4, 5, 6, 7]
unless numeros.empty?
    puts "El array no esta vacio, tiene #{numeros.count} elementos"
end
