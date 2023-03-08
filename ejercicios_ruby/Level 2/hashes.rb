# 1. Definir un metodo llamado "hash" que reciba un arreglo.
# 2. Crear un has vacio.
# 3. Recorrer el arreglo y cada posicion ponerla como valor y su index como llave adentro del hash vacio.

def hash(array)
    hash = {}
    array.each_with_index do |value, index|
        hash[index] = value
    end
    puts hash
end

hash([1,2,3,4,5,6])
hash(["Mi", "Nombre", "Es"])
