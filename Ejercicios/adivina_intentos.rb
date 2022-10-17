# Adivina el número (varios intentos)

#Escribe un programa que piense un número de forma aleatoria y le pida al usuario que lo trate de adivinar (como en uno de los ejercicios anteriores).
#La diferencia es que esta vez el usuario puede intentar indefinidamente hasta que encuentre el número.

#1-Hacer un programa que piense un número random entre 1 y 10.
#2-Pedir al usuario que trate de adivinar el numero.
#3-Darle la entrada de informacion al usuario
#4-Comparar el numero random con la entrada del usuario.
#4.1-Si no coinciden los numeros, pedirle al usuario que siga intentando y darle entradas de informacion hasta que adivine.
#5-Comparar nuevamente el numero random con la entrada del usuario.
#5.1-Si coinciden los numeros, felicitar al usuario y terminar.

num=rand(1..10) #1
print 'Adivina el numero que estoy pensando: ' #2
guess=gets.chomp.to_i #3

while num != guess #4
    print 'Lo sentimos! Intenta nuevamente: ' #4.1
    guess = gets.chomp.to_i #4.1
end

if guess==num #5
    puts 'Ese es lo lograste'#5.1
end
