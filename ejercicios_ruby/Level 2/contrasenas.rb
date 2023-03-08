# 1. Definir un metodo llamado "password" que reciba una cadena.
# 2. Eliminar los espacios que tenga la cadena.
# 3. Convertir la cadena a letras minusculas, reemplazar la a por el 4, la e por el 3, la i por el 1 y la o por el 0.
# 4. Devolver la cadena.

def password(string)
    downcase = string.downcase
    change0 = downcase.delete(" ")
    change1 = change0.gsub("a", "4")
    change2 = change1.gsub("e", "3")
    change3 = change2.gsub("i", "1")
    last = change3.gsub("o", "0")
    puts last
end

password("contrasena")
password("Esta es una contrasena")