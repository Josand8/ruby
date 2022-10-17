class Animal
  attr_accessor :name, :sex, :age
  def initialize(name, sex, age)
    @name = name
    @sex = sex
    @age = age
  end

  def eat(food)
    "I'm eating #{food}"
  end

  def run(destination)
    "I'm going to #{destination}"
  end
  def meow()
    puts "meow"
  end
end

animal = Animal.new("Firulais", "male", 4)
animal2 = Animal.new("Kitty", "female", 3)
p animal
puts animal.eat("meal")
puts animal.run("home")
animal.meow

p animal2
puts animal2.eat("milk")
puts animal2.run("tree")
animal2.meow


