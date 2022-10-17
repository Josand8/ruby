class Robot
  @@num_robots = 0 # variable de clase

  attr_accessor :name
  def initialize(name)
    @name = name
    @@num_robots += 1
  end

  # metodo de clase
  def self.show_number_robots
    @@num_robots
  end

  def self.description
    "This method has attributes \n name \n ...."
  end
end

puts "Numero de robots"
puts Robot.show_number_robots
r1 = Robot.new("u234")
puts r1.name
r2 = Robot.new("u235")
puts r2.name
r3 = Robot.new("u236")
puts r3.name
puts "Numero de robots"
puts Robot.show_number_robots

puts Robot.description
