# 1. Solicitar al usuario que escriba una frase y almacenarla en una variable.
# 2. Solicitar al usuario el numero de veces que quiere repetir esa frase y almacenarlo en una variable.
# 3. Crear un ciclo que reciba el numero de veces que el usuario dijito e imprima la frase.

print "Escriba una frase: "
frase = gets.chomp.to_s
print "Escriba el numero de veces que quiere repetir esa frase: "
num = gets.chomp.to_i

num.times {puts frase}