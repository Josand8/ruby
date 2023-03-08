# 1. Definir un metodo llamado "positions_num_1" que reciba un array.
# 2. Recorrer el array.
# 3. Si el numero es igual a 1, guardar la posicion en un nuevo array.

def positions_num_1(array)
    new_array = []
    array.each_with_index do |value, index|
        if value === 1
            new_array.push(index)
        end
    end
    p new_array
end

positions_num_1([1,1,1,1])
positions_num_1([0,1,0,1])
positions_num_1([0,1,2,3,1,4,5,1])