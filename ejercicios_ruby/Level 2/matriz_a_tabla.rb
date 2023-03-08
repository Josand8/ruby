# 1. Escribir un metodo llamado "print_matrix" que reciba una matriz.
# 2. Recorrer la matriz e imprimir las posiciones separadas por un "|".


def print_matrix(matrix)
    matrix.each do |value|
        value.each_with_index do |number, index|
            print "#{number}"
            unless index == value.length - 1
                print " | "
            end
        end
        puts ""
    end
end

print_matrix([[10, 2, 3], [4, 50, 6], [71, 8, 9]])
puts
print_matrix([[2,31,7], [50,3,90], [3,9,1]])