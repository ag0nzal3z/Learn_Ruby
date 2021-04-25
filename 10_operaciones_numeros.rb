# Operadores aritmeticos

# Suma
puts 10 + 5
# Resta
puts 10 - 5
# Multiplicacion
puts 5 * 5
# Division
puts 12 / 6

division_entera = 12 / 6
puts division_entera

residuo_division = 12 % 5
puts residuo_division

# Si un valor de la division es de tipo float, se dividira como lo hacen las calculadoras, por division real
division_real = 12 / 5.0
puts division_real

# Exponenciacion
puts 3 ** 3
puts 2 ** 7


# Evaluacion de Expresiones con varios operadores ( Orden de Precedencia)
primera_expresion = 3 + 2 ** 2 * 4
puts primera_expresion

segunda_expresion = 3 + 2 ** (2 * 4)
puts segunda_expresion

tercera_expresion = (3 + 2) ** (2 * 4)
puts tercera_expresion

cuarta_expresion = ((3 + 2) ** 2) * 4
puts cuarta_expresion


# Operadores Relacionales
num1 = 7
num2 = 8
# Menor que
puts num1 < num2
# Mayor que
puts num1 > num2
# Menor o igual que
puts num1 <= num2
# mayor o igual que
puts num1 >= num2
# Igual que
puts num1 == num2
# Distinto que
puts num1 != num2

# Los numeros flotantes tambien se pueden comparar
puts 3.33 < 3.34
puts 1 == 1.0