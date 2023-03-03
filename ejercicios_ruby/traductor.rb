# 1. Crear un hash con la traduccion de los numeros del 1 al 10 del español al ingles.
# 2. Pedirle la usuario que escriba que palabra quiere traducir y almacenarla en una variable.
# 3. Si la palabra esta, imprimir la traduccion.
# 3.1 Si la plabra no esta, imprimir "No encontramos la traducción de "Palabra"".

numeros = {"Uno" => "One", "Dos" => "Two", "Tres" => "Three", "Cuatro " => "Four", "Cinco" => "Five",
        "Seis" => "Six", "Siete" => "Seven", "Ocho" => "Eight", "Nueve" => "nine", "Diez" => "ten"}

print "Escribe la palabra a traducir: "
palabra = gets.chomp.to_s.capitalize

if numeros.has_key?(palabra)
    puts "La traducción es: #{numeros[palabra]}"
else
    puts "No encontramos la traducción de: #{palabra}"
end