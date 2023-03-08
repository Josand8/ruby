# 1. Declarar un metodo que reciba un array.
# 2. Recorrer el array y comprobar que todas las posiciones sean el numero 5.
# 2.1 Si en todas las posiciones tiene el numero 5, devolver "true".
# 2.2 Si en alguna posicion no tiene el numero 5, devolver "false".

def todos_son_5(array)
    array.each do |num|
        return false if num != 5
    end

    true
end


puts todos_son_5([5,5,5,5,5,5,5,5])
puts todos_son_5([5,5,5,5,4,5,5,5])