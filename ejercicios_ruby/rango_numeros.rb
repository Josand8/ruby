# 1. Pedirle al usuario que escriba el primer numero y almacenarlo en una variable.
# 2. Pedirle al usuario que escriba el segundo numero y almacenarlo en una variable.
# 3. Generar un rango con los numeros que nos dio el usuario.
# 3.1 Mientras el num1 sea menor o igual a num2, imprima num1 y despues sumele 1.

print "Escriba el primer numero: "
num1 = gets.chomp.to_i
print "Escriba el segundo numero: "
num2 = gets.chomp.to_i

while num1 <= num2
    puts num1
    num1 += 1
end