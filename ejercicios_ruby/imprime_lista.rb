# 1. Pedir al usuario el numero de personas que quiere ingresar y almacenarlo en una variable.
# 2. Crear un ciclo que reciba el numero de personas que el usuario ingreso y pregunte por el nombre de cada una y los almacene en un array.
# 3. Recorrer el array e imprimir la posicion y el nombre.


print "Numero de personas a ingresar: "
num = gets.chomp.to_i
persons = []

for a in 0..(num - 1) do
    print "Persona #{a}: "
    x = gets.chomp.to_s
    persons.push(x)
end

persons.each_with_index {|nombre, index| puts "El nombre en la posicion #{index} es #{nombre}"}