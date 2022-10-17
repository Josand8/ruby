#Escribe un método llamado `buscar` que reciba dos parámetros: arreglo y otro parámetro (de cualquier tipo), 
#y retorne la primera **posición** en la que se encuentra el segundo parámetro en el arreglo. Si no se encuentra debe retornar `-1`.

#Por ejemplo, en el arreglo `[1, 2, 3]` el número `3` se encuentra en la posición `2`, que es lo que retornaría
#el método. Si el arreglo es nuevamente `[1, 2, 3]` pero el segundo parámetro es `5` retornaría `-1`.

#1-Definir un metodo llamado `buscar` que reciba 2 parametros, 1 arreglo y otro parámetro.
#([1, 2, 3],3)
#2-Recorrer el arreglo desde la posicion 0 hasta el final.
#Crear una variable i que guarde la primera posicion.
#Crear una variable x que guarde la longitud del array -1.
#mientras i<=x haga lo siguiente
#2.1-Validar si el valor de esa posicion es igual al valor del segundo parametro.
#Validar si el arreglo en la posicion i==parametro2
#2.2-Si el valor se encuentra, retornar la posicion.
#Retornaría i y termina
#2.3-Si no se encuentra moverse a la siguiente posicion y ejecutar desde el paso 2.1
#si termino y no se encontro retornar -1.

def buscar(array,value)
    i = 0
    x = array.length - 1
    while i <= x
        if array[i] == value
            return i
        else 
            i=i+1
        end
    end
    return -1 #En ruby se retorna la ultima linea, el return es opcional.
end
puts buscar([3, 1, 4, 2, 4], 4)
puts buscar([8, 3, 54, 9, 1], 7)
puts buscar(["h", "o", "l", "a"], "d")
#array=(i=[8, 3, 54, 9, 1], 7)

def buscar_ruby(array,value)
    res = array.index(value)
    res == nil ? -1 : res
    # if res == nil
    #     return -1
    # else
    #     return res
    # end
end
#condicion ? valor retorno si es verdadero : valor retorno si es falso
puts buscar_ruby([8, 3, 54, 9, 1], 7)
puts buscar_ruby([3, 1, 4, 2, 4], 4)

def buscar_ruby2(array,value)
    res = array.index(value)
    res ? res : -1
end

puts buscar_ruby2([8, 3, 54, 9, 1], 7)
puts buscar_ruby2([3, 1, 4, 2, 4], 4)   





































# def buscar(x=[],y)
#     x.each { |p| puts p} if y=x.is_a?(Array)
#     print Array[y]
# end


# buscar([1, 2, 3], 3) # 2
# buscar([4, 7, 2, 9, 3], 4) # 0
# puts buscar([8, 3, 54, 9, 1], 7) # -1
# puts buscar([3, 1, 4, 2, 4], 4) # 2
# puts buscar(["h", "o", "l", "a"], "l") # 2
# puts buscar(["h", "o", "l", "a"], "d") # -1
# end