module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end

end

class Vehicle
  attr_accessor :color
  attr_reader :year

  @@num_of_vehicles = 0

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def self.num_of_vehicles
    p "Number of vehicles: #{@@num_of_vehicles}"
  end

  def speed_up(number)
    @current_speed += number
    p "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    p "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    p "#{@model}'s engine is turned off!'"
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "Your new #{color} paint job looks great!"
  end

  def age
    puts "The vehicle is #{get_vehicle_age} years old"
  end

  private

  def get_vehicle_age
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 4
end

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
lumina.age
puts lumina

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)
