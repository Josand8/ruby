# 1. Definier un metodo llamado "numero_de_likes" que reciba un numero.
# 2. Si el numero es menor a 1000 devuelve el mismo numero.
# 3. Si el numero es mayor o igual a 1000 devuelve el numero abreviado con una K. e.j. 1000 = 1K  /  10000 = 10K  / 100000 = 100K
# 4. Si el numero es mayor o igual a 1 Millon y menor que 1 Billon devuelve el numero abreviado con una M. e.j. 1000000 = 1M / 5000000 = 5M

def number_of_likes(number)  
    number.to_f
    if number < 1000
        puts number
    elsif number < 1000000
        puts "#{(number / 1000.0).floor(1)} K"
    elsif number >= 1000000 && number < 1000000000
        puts "#{(number / 1000000.0).floor(1)} M"
    end
end

number_of_likes(1000)
number_of_likes(10000)
number_of_likes(999999)
number_of_likes(1000000)
number_of_likes(1900000)

