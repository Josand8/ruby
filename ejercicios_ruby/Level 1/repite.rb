# 1. Pedir al usuario que ingrese una frase.
# 2. Tomar lo que ingresa el usuario.
# 3. Pintar en consola lo que el usuario ingreso.

print 'Por favor ingrese la frase: '
frase = gets.chomp.to_s
puts "El usuario dice: #{frase}"


