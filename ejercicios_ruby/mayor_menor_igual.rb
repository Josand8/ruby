#1. Pedirle la usuario que escriba el numero y almacenarlo.
#2. Comparar el numero que nos dio el usuario con el 10.
#2.1 Si el numero es igual a 10 imprimir "Es igual a 10"
#2.2 Si el numero es mayor a 10 imprimir "Es mayor que 10"
#2.3 Si el numero es menor a 10 imprimir "Es menor que 10"

print "Escriba un numero: "
num = gets.chomp.to_i

puts num.methods


if num === 10
    puts "Es igual a 10"
elsif num > 10
    puts "Es mayor que 10"
elsif num < 10
    puts "Es menor que 10"
end