# Opereaciones con Arrays
# Ver diagramas de Venn para mas informacion

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [5, 0, 1, 10, 2, 8, 3, 6, 4]
print a
print b

# Resta: Son los elementos del array de la izquierda, menos los elemtos comunes y menos los elementos del array a la derecha
resta_a_b = a - b
print resta_a_b
resta_b_a = b - a
print resta_b_a
# Union: Son los elementos unicos en a, mas los elementos unicos en b, se eliminan las repeticiones
union_a_b = a | b
print union_a_b
# Interseccion: Son los elementos unicos comunes
interseccion_a_b = a & b
print interseccion_a_b
# Concatenacion: Se crea un nuevo array con los elementos de ambos
concatenacion = a + b
print concatenacion

