#Escribe un programa que le pida al usuario su peso y su altura para calcular su BMI.
#1-Pedir al usuario que ingrese su peso en Kilo Gramos.
#2-Pedir al usuario que ingrese su altura en Metros.
#3-Calcular el bmi con la formula: peso / altura^2.
#4-Dar a conocer al usuario cual es su BMI.

puts "Introduzca su peso en KG: "
peso = gets.chomp.to_f
puts "Introduzca su altura en M: "
altura = gets.chomp.to_f

bmi= peso/altura**2
puts "Su BMI es #{bmi} "
