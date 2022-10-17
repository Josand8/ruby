#Escribe un método llamado `posiciones_num_1` que reciba un arreglo y retorne un nuevo arreglo con las **posiciones** en las que aparece el número uno (1).

def posiciones_num_1(array)
    i = 0
    new_array = []
    array.each do |numero|
        if numero == 1
            new_array.append(i)
        end
        i += 1
    end
    puts new_array.to_s
end

puts posiciones_num_1([0, 1, 0, 1]).inspect # [1, 3]
puts posiciones_num_1([1, 1, 1]).inspect # [0, 1, 2]
puts posiciones_num_1([2, 3, 4]).inspect # []