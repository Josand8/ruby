# 1. Pedir al usuario que escriba su año de nacimiento.
# 2. Comprobar en que generacion nacio el usuario.
# 2.1 Imprimir "Gran generación" si el año es menor a 1945
# 2.2 Imprimir "Baby boomer" si es entre 1945 y 1964
# 2.3 Imprimir "X" si es entre 1965 y 1981
# 2.4 Imprimir "Millenial" si es entre 1982 y 1994
# 2.5 Imprimir "Z" si es igual o mayor a 1995

print "Escriba el año de su nacimiento: "
year = gets.chomp.to_i

if year < 1945
    puts "Gran generación"
elsif year >= 1945 && year <= 1964
    puts "Baby boomer"
elsif year >= 1965 && year <= 1981
    puts "X"
elsif year >= 1982 && year <= 1994
    puts "Millenial"
elsif year > 1994
    puts "Z"
end