class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def greet
    build_greet
  end

  private
  def build_greet
    return "Hola soy #{self.name}" if @first_name == "Yony"
    "Hola soy #{@first_name}"
  end
end

p1 = Person.new("Yony", "Briñez")
p2 = Person.new("Jose", "Briñez")
puts p1.name
puts p1.greet
puts "#" * 50
puts p2.name
puts p2.greet
