#Escribe un método llamado `cadena_a_arreglo` que reciba una cadena de texto y retorne un arreglo con las palabras de la cadena. 
#Puedes dividir las cadena por los espacios en blanco para encontrar las palabras.

#1-Escribir un método llamado `cadena_a_arreglo` que reciba una cadena.
#2-Crear un metodo que separe los valores de la cadena y los combierta en arreglos.
#3-retornar el arreglo y terminar.

def cadena_a_arreglo(texto)
    texto.split(" ")
end

puts cadena_a_arreglo("Hola mundo").inspect # ["Hola", "mundo"]
puts cadena_a_arreglo("Make it Real").inspect # ["Make", "it", "Real"]
puts cadena_a_arreglo("").inspect # []