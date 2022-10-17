#Escribe un método llamado `arreglo_a_cadena` que reciba un arreglo y retorne una cadena de texto uniendo todos los elementos con espacios.

#1-Escribir un método llamado `arreglo_a_cadena` que reciba un arreglo.
#2-Crear un metodo que una los valores del arreglo y cree una cadena.
#3-retornar la cadena y terminar.

def arreglo_a_cadena(array)
    array.join(' ')
end

puts arreglo_a_cadena(["hola", "mundo"]) # "hola mundo"
puts arreglo_a_cadena(["Make", "it", "Real"]) # "Make it Real"
puts arreglo_a_cadena([])