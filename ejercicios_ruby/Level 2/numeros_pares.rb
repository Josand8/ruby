# 1. Definir un metodo llamado "pair_numbers" que reciba un arreglo.
# 2. Recorrer el arreglo.
# 3. Por cada posicion comprobar si el numero es par.
# 4. Si el numero es par almacenarlo en un arreglo.

def pair_numbers(array)
    new_array = []
    array.each do |value|
        if value % 2 == 0
            new_array.push(value)
        end
    end
    p new_array
end

pair_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9])
pair_numbers([120, 125, 876, 901, 934, 1298])
pair_numbers([17, 34, 87, 6, 95, 82, 21])