#Escribe un programa que piense un número de forma aleatoria y le pida al usuario que lo trate de adivinar.
#Si el número es correcto debe imprimir "Felicitaciones, ese era!", de lo contrario debe imprimir "Lo siento, intenta nuevamente!"

#1-Escribir un programa que piense un número aleatorio entre 1 y 10.
#2-Pedir al usuario que trate de adivinar el numero.
#3-Darle la entrada de información al usuario.
#4-Comparar el numero random con la entrada del usuario.
#4.1-Si coinciden los numeros, felicitar al usuario y terminar.
#4.2-Si no coinciden los numeros, pedirle al usuario que siga intentando

num = rand(1..10)#1

puts "Adivina el número que estoy pensando: " #2
guess = gets.chomp.to_i #3

if guess == num #4
  puts "Felicitaciones, ese era!" #4.1
else
  puts "Lo siento, intenta nuevamente!"  #4.2
end
