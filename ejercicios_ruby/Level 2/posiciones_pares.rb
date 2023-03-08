# 1. Define un arreglo llamado "pair_positions".
# 2. Recorrer el arreglo de 2 en 2.
# 3. Almacenar las posiciones pares en un nuevo arreglo.

def pair_positions(array)
    new_array = []
    (0..array.length - 1).step(2).each do |index|
        new_array.push(array[index])
    end
    p new_array
end
pair_positions([1,2,3,4])
pair_positions([1,2,3,4,5,6])
pair_positions([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14])
