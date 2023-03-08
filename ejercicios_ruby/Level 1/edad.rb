# 1. Preguntar al usuario su año de nacimiento y almacenarlo en una variable.
# 2. Obtener el año actual.
# 3. Al año actual restarle el año que nos dio el usuario.
    # 3.1 Si el resultado es mayor a 120 Años, imprimir "Imposible! Nadie tiene esa edad".
    # 3.2 Si el año es mayor al actual, imprimir "Imposible! Aún no has nacido".
# 4. Responderle al usuario con su edad.
    # 4.1 Si el año es igual a 1 responder "Tienes 1 año" en vez de "Tienes 1 años".


print "Pon en que año naciste: "
year = gets.chomp.to_i
actual_year = Time.now.strftime("%Y").to_i
age = actual_year - year
if age > 120
    puts "Imposible! Nadie tiene esa edad"
elsif year > actual_year
    puts "Imposible! Aún no has nacido"
elsif age === 1
    puts "Tienes 1 año"
else
    puts "Tienes #{age} años"
end