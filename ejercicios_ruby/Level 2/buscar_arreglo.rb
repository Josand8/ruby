# 1. Declarar un metodo llamado "search" que reciba un arreglo y otro parametro.
# 2. Recorrer el arreglo y comparar cada posicion con el otro parametro.
# 2.1 Si hay coincidencia imprimir la posicion en la que se encontro la coincidencia.
# 2.2 Si no se encuentra coincidencia en ninguna posicion debe retornar "-1".

def search(array, parameter)
    if array.include?(parameter)
        array.each_with_index do |value, index|
            if value == parameter
                puts index
            end
        end
    else
        puts "-1"
    end
end

search([1, 2, 3], 3)
search([4, 7, 2, 9, 3], 4)
search([8, 3, 54, 9, 1], 7)
search(["h", "o", "l", "a"], "l")
search(["h", "o", "l", "a"], "d")