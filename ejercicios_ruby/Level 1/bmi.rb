# 1. Perdirle al usuario que escriba su peso y almacenarlo en una variable.
# 2. Perdirle al usuario que escriba su altura y almacenarla en una variable.
# 3. Calcular el IMC e imprimirlo.

print "Ingrese su peso: "
peso = gets.chomp.to_i
print "Ingrese su altura: "
altura = gets.chomp.to_f
imc = (peso / altura**2)
puts "Su IMC es: #{imc.round(1)}"