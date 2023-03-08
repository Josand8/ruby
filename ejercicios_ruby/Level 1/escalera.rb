# 1. Pedirle al usuario un numero y guardarlo en una variable.
# 2. Crear un buble que itere el numero de veces que el usuario escribio.
# 3. Por cada iteracion se agregar un "#" para crear una escalera.

print "Escriba un numero: "
num = gets.chomp.to_i

num.times {|n| puts "#" * (n + 1) }
puts "----------------"
num.times {|n| puts "#" * (num - n) }