class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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
lumina.current_speed

p '----------------------------------'

lumina.color = 'black'
puts lumina.color
puts lumina.year

p '----------------------------------'
puts lumina.color
lumina.spray_paint('red')   #=> "Your new red paint job looks great!"
puts lumina.color
