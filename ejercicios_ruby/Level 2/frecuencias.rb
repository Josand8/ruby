# 1. Definir un metodo llamado "frequency" que reciba un string.
# 2. Enviar cada letra del string a un array.
# 3. Recorrer el array e identificar cuantas veces se repite cada caracter.
# 4. Almacenar en un hash, la letra como llave y las veces que se repite como valor.


def frequency(string)
    hash = {}
    string_arr = string.downcase.chars()
    string_arr.each do |value|
        unless value == " "
            if hash[value] 
                hash[value] += 1
            else
                hash[value] = 1
            end
        end
    end
    p hash
end

frequency("Hola mundo")
frequency("Tres tristes tigres tragaban trigo en un trigal")