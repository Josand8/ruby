# 1. Pedir al usuario que escriba su nombre.
# 2. guardar el nombre del usuario en una variable.
# 3. Retornar la variable adentro de un string. "hola #{variable}!"

print "Escriba su nombre a continuación: "
nombre = gets.chomp.to_s
puts "Hola #{nombre}!"