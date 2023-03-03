#1. Pedirle al usuario un numero y almacenarlo en una variable.
#2. Comprobar si el numero es multiplo de 5.
#2.1 Si el numero es multiplo de 5, imprimir "Si, el número x es múltiplo 5".
#2.2 Si el numero no es multiplo de 5, imprimir "No, el número x no es múltiplo de 5".

print "Escriba un numero: "
num = gets.chomp.to_i

if  num % 5 === 0
    puts "Si, el número #{num} es múltiplo 5"
else
    puts "No, el número #{num} no es múltiplo de 5"
end