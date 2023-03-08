# 1. Definir un metodo llamado "search" que reciba una matriz y otro argumento.
# 2. Recorrer la matriz y comprovar si en alguna posicion encontramos el otro argumento.
# 2.1 Si encontramos coincidencia retornar un arreglo con la posicion.
# 2.2 Si no encontramos coincidencia retornar "nil".

def search(matrix, argument)
    new_array = []
    matrix.each_with_index do |value, index|
        value.each_with_index do |num, position|
            if num == argument
                new_array.push(index)
                new_array.push(position)
            end
        end
    end
    if new_array.empty?
        puts "nil" #Para que sea más visual.
    else
        p new_array
    end
end

search([[1, 2], [3, 4]], 5)
search([[1, 2], [3, 4]], 3)
search([[6, 5], [3, 4], [7, 8]], 8)