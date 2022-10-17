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

end

class Cat < Animal
  def initialize(name, sex, age)
    super(name, sex, age)
  end

  def meow()
    puts "meow"
  end
end

animal = Animal.new("Firulais", "male", 4)
animal2 = Cat.new("Kitty", "female", 3)
p animal
puts animal.eat("meal")
puts animal.run("home")

p animal2
puts animal2.eat("milk")
puts animal2.run("tree")
animal2.meow
puts animal2.class.superclass

