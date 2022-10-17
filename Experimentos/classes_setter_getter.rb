# Son metodo para ver y modificar las variables de instancia (los atributos)

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # getters
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  # setters
  def first_name=(val)
    @first_name = val
  end

  def last_name=(val)
    @last_name = val
  end
end

p1 = Person.new("Yony", "Briñez")
puts p1.first_name
puts p1.last_name

p1.first_name = "Yony Arley"
puts p1.first_name


class Animal
  attr_reader :name # crea solo el getter
  attr_writer :color #crea solo el setter
  attr_accessor :age # crea los dos metodos
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end

a1 = Animal.new("firulais", "marron", 4)
puts a1.name
a1.color = "cafe"

puts a1.age
a1.age = 6
puts a1.age
