# 1. Difinir un metodo llamado "remplace" que reciba un arreglo.
# 2. Recorrer el arreglo.
# 2.1 Si tiene numeros "1" reemplazarlos por "0".
# 2.2 Si tiene numeros "0" reemplazarlos por "1".

def remplace(array)
    array.each_with_index do |value, index|
        if value === 0
            array[index] = 1
        elsif value === 1
            array[index] = 0
        end
    end
    print array
end

remplace([1,0,1,0])
remplace([1,1,0,0])
remplace([0,1,1,0])