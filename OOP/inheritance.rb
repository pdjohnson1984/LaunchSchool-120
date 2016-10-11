class Animal
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Animal
  def speak
    'woof!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Cat < Animal
  def speak
    'meow!'
  end
end

class Bulldog < Dog
  def swim
    "cant swim!"
  end
end

teddy = Dog.new
puts teddy.speak
puts teddy.swim

karl = Bulldog.new
puts karl.speak
puts karl.swim

p Bulldog.ancestors
