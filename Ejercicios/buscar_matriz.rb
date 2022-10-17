#Escribe un método llamado `buscar` que reciba dos argumentos: una matriz (un arreglo de arreglos) y otro argumento (de cualquier tipo).
#El método debe retornar un arreglo con la posición donde se encuentra el segundo argumento. Si no se encuentra debe retornar `nil`.

#1-Definir un metodo llamado `buscar` que reciba dos argumentos: una matriz y otro argumento.
#2-Recorrer la matriz desde la posición 0 hasta el final.
#Crear una variable i que guarde la posicion de la matriz.
#Crear una variable x que guarde la longitud de la matriz -1.
#3-Inspeccionar si hay coincidencia entre la matriz y el segundo argumento.
#3.1-Si hay coincidencia debe retornar la posición en la que se encontro.
#3.2-Si se recorrio toda la matriz y no se encontro coincidencia, retornar nil y terminar.

def buscar(mat, val)
end

buscar([[1, 2], [3, 4]], 3) # [1, 0]
buscar([[1, 2], [3, 4]], 5) # nil