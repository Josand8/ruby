#Escribe un programa que le pida al usuario su peso y altura. El programa deberá calcular el BMI e imprimir:
# "Bajo de peso" si el BMI < 18.5
# "Normal" si está entre 18.5 y 24.9
# "Sobrepeso" si está entre 25 y 29.9
# "Obeso" si es igual o mayor a 30

#1-Pedir al usuario que ingrese su peso en Kilo Gramos.
#2-Pedir al usuario que ingrese su altura en Metros.
#3-Calcular el bmi con la formula: peso / altura^2.
#4-Comparar el bmi con la tabla.
#4.1-Si el bmi es menor a 18.5, imprimir que es "Bajo de peso", si no comparar con el siguiente parametro.
#4.2-Si el bmi esta entre 18.5 y 24.9, imprimir que es "Normal", si no comparar con el siguiente parametro.
#4.3-Si el bmi esta entre 25 y 29.9, imprimir que es "Sobrepeso", si no comparar con el siguiente parametro.
#4.4-Si el bmi es mayor o igual a 30, imprimir que es "Obeso".
#5-Terminar.

puts "Introduzca su peso en KG: "
peso = gets.chomp.to_f #1

puts "Introduzca su altura en M: "
altura = gets.chomp.to_f #2

bmi= peso/altura**2 #3
#4
if bmi < 18.5 #4.1
    puts "Su BMI es Bajo de peso"
elsif bmi > 18.5 and bmi < 24.9 #4.2
    puts "Su BMI es Normal"
elsif bmi > 25 and bmi < 29.9 #4.3
    puts "Su BMI es Sobrepeso"
else bmi >= 30 #4.4
    puts "Su BMI es Obeso"
end #5
