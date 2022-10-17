#Escribe un método `contar` que reciba un arreglo y retorne la cantidad de veces que aparece el número 5.

#1-Escribir un método `contar` que reciba un arreglo.
#Crear una variable que guarde el numero de veces que aparece el número 5.(Esta empieza desde 0)
#2-Recorrer el arreglo posicion por posicion y comparar.
#2.1-Si encuentra el 5 en una posicion sumarle 1 a la variable y continuar recorriendo.
#3-Cuando termine de recorrer el arreglo retorne el valor que lleva la variable y terminar.
#3-1-Si recorre todo el arreglo y NO encuentra ninguna coincidencia, retorne 0, y terminar.

def contar(array)
    cantidad = 0
    array.each do |numero|
        if numero == 5
            cantidad += 1
        end
    end
    puts "#{cantidad}"
end


puts contar([1, 5, 5, 1]) # 2
puts contar([2, 6, "5"]) # 0
puts contar([1,5,0,5,7,8,5,4,5])
puts contar([]) # 0