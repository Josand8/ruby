#Escribe un método llamado `contrasena` que reciba una cadena y devuelva una nueva cadena realizando los siguientes cambios:

# Las mayúsculas se reemplazan por minúsculas.
# Se eliminan los espacios en blanco.
# Se reemplaza la `a` por `4`.
# Se reemplaza la `e` por `3`.
# Se reemplaza la `i` por `1`.
# Se reemplaza la `o` por `0`.

#1-Escribir un metodo llamado `contrasena` que reciba una cadena.
#2-Despues de recibir la cadena hacer modificaciones.
#2.1-Reemplazar mayusculas por minusculas.
#2.2-Eliminar los espacios en blanco.
#2.3-reemplazar la `a` por el `4`.
#2.4-reemplazar la `e` por el `3`.
#2.5-reemplazar la `i` por el `1`.
#2.6-reemplazar la `o` por el `0`.
#3-Devuelva una cadena con todos los cambios y termine.

def contrasena(cad)
    cad.downcase!
    x=cad.gsub(/\s+/, "")
    x.gsub(/[aeio]/, 'a' => 4, 'e' => 3, 'i' => 1, 'o' => 0)
end


puts contrasena("hola") # "h0l4"
puts contrasena("estA eS unA pRuEba") # "3st43sun4pru3b4"
puts contrasena("") # ""
puts contrasena("Hola Gente Esta es OTRA pRUEBA")