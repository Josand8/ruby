# 1. Definir un metodo llamado "translate" que reciba un string y un diccionario.
# 2. Almacenar cada palabra del string en un array.
# 3. Recorrer cada posicion del array.
# 4. Las palabras del array buscarlas en el diccionario.
# 4.1 Si encuentra la palabra enviar el valor del diccionario a un nuevo array.
# 4.2 Si no la encuentra, tambien enviar la palabra al nuevo array.
# 5. Convertir el array donde almacenamos las palabras en un string e imprimirlo.



def translate(string, dictionary)
    array = string.split(" ")
    new_array = []
    array.each do |word|
        if dictionary.has_key?(word)
            new_array.push(dictionary[word])
        else
            new_array.push(word)
        end
    end
    puts new_array.join(" ")
end

dict = { "hola" => "hello", "mundo" => "world"}

translate("hola mundo me llamo Carlos",dict)
translate("hola pedro", dict)