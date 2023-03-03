# 1. Perdirle al usuario que escriba su peso y almacenarlo en una variable.
# 2. Perdirle al usuario que escriba su altura y almacenarla en una variable.
# 3. Calcular el IMC.
# 3.1 Imprimir "Bajo de peso" si el BMI < 18.5.
# 3.2 Imprimir "Normal" si está entre 18.5 y 24.9.
# 3.3 Imprimir "Sobrepeso" si está entre 25 y 29.9.
# 3.4 Imprimir "Obeso" si es igual o mayor a 30.

print "Ingrese su peso: "
peso = gets.chomp.to_i
print "Ingrese su altura: "
altura = gets.chomp.to_f
imc = (peso / altura**2)

if imc < 18.5
    puts "Bajo de peso"
elsif imc > 18.5 && imc < 24.9
    puts "Normal"
elsif imc > 25 && imc < 29.9
    puts "Sobrepeso"
elsif imc >= 30
    puts "Obeso"
end