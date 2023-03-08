# 1. Solicitar al usuario que escriba el primer numero y guardarlo en una variable.
# 2. Solicitar al usuario que escriba el segundo numero y guardarlo en una variable.
# 3. Crear un metodo que sume las 2 variables e imprima el resultado.

print "Escriba el primer numero: "
numero_1 = gets.chomp.to_i
print "Escriba el segundo numero: "
numero_2 = gets.chomp.to_i

puts "La suma da: #{numero_1 + numero_2}"