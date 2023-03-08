# 1. Escribir un metodo "contar" que reciba un arreglo y un argumento.
# 2. Recorrer el arreglo y contar las veces que aparezca el argumento en el.

def count(array, argument)
    count = 0
    array.each do |value| 
        if value === argument
            count += 1
        end
    end
    puts count
end

count([1,2,3,4,3,4,3,2], 3)
count([1,2,5,2,5,4,5,5], 5)
count([1,2,5,2,5,4,5,5], 1)