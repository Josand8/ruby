# 1. Definir un metodo llamado "average" que reciba un arreglo.
# 2. Recorrer el arreglo y sumar el valor de cada posicion.
# 3. Dividir la suma de los valores entre la cantidad de posiciones del arreglo.

def average(array)
    total = array.sum
    positions = array.length.to_f
    average = total / positions
    puts average
end

average([1, 2, 3])
average([2 ,2 ,3 ,3])
average([3, 4, 5, 8])