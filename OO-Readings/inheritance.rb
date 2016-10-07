class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
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
end
