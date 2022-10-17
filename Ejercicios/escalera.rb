#Escribe un programa para la consola que le pida al usuario un número y cree una escalera como en el siguiente ejemplo:
#Ingresa un número: 5
#
##
###
####
#####

#En la primera línea se imprime un `#`, en la segunda dos, y así sucesivamente hasta el número que ingresó el usuario.

puts "Ingrese un numero: "
guess = gets.chomp.to_i

for i in 0..guess do
    puts "#" * i
end

puts "Ingrese un numero: "
guess = gets.chomp.to_i

for i in 0..guess do
    puts "#" * (guess - i)
end