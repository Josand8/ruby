#1. Generar un numero random del 0 al 10.
#2. Pedir al usuario que adivine el numero e ingrese un numero.
#3. Comparar los numeros.
#3.1 Si los numeros son iguales imprimir "Felicitaciones, ese era!".
#3.2 Si los numeros son diferentes imprimir "Lo siento, intenta nuevamente!".
#3.2.1 Permitir que el usuario vuelva a intentar adivinar el numero.

num_random = rand(10).to_i
print "Intenta adivinar el numero del 0 al 10: "
num = gets.chomp.to_i

until num_random == num
    print "Lo siento, intenta nuevamente! : "
    num = gets.chomp.to_i
end

puts "Felicitaciones, ese era!"