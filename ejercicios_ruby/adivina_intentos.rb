# 1. Generar un numero random del 0 al 10.
# 2. Pedir al usuario que adivine el numero e ingrese un numero.
# 3. Inicializar el numero de intentos en una variable.
# 4. Crear un ciclo que evalue cuantos intentos quedan y se ejecute mientras aun quedan intentos.
# 5. Crear y evaluar varias condiciones.
# 5.1 Si no hay más intentos decirle al usuario que perdió y evaluar la condicion del ciclo a verdadera.
# 5.2 Si quedan más intentos, evalue si el usuario adivino el numero.
# 5.2.1 Si el usuario adivino el numero, felicitarlo y evaluar la condicion del ciclo a verdadera.
# 5.2.2 Si el usuario no adivino pero le quedan más intentos, solicitar que vuelva a intentarlo y quitarle un intento.

num_random = rand(10).to_i
print "Intenta adivinar el numero del 0 al 10: "
num = gets.chomp.to_i
intentos = 4


while intentos > -1
    if intentos == 0
        puts "No tienes intentos, perdiste"
        intentos = -1
    elsif num_random == num
        puts "Felicitaciones, lo encontraste!"
        intentos = -1
    else
        print "Te quedan #{intentos} intentos, Intenta nuevamente: "
        num = gets.chomp.to_i
        intentos -= 1
    end
end