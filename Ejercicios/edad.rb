#Escribe un programa para la consola que le pregunte al usuario el año en que nació e imprima su edad actual.

#1-Preguntarle al usuario cuantos años tiene y darle entrada para que lo digite.
#2-Guardar en una variable el metodo Time.now
#3-Guardar en otra variable la variable anterior y especificar que solo queremos el dato año ademas de comvertirlo a int.
#4-Crear una variable que reste el año actual con la entrada del usuario.
#5-Imprimir el resultado de la anterior variable y terminar.

puts "¿En que año naciste?"
guess = gets.chomp.to_i

t = Time.now
x = t.strftime("%Y").to_i
z = x - guess
puts ("Tienes #{z} años")
