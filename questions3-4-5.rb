class Add
  def initialize(x, y)
     @x = x
     @y = y
     @answer = x + y
   end
end

class Subtract
  def initialize(x,y)
     @x = x
     @y = y
     @answer = x - y
   end
end

class Multiply
  def initialize(x,y)
     @x = x
     @y = y
     @answer = x * y
   end
end

first = Add.new(4, 5)
second = Subtract.new(9, 6)
third = Multiply.new(5, 7)
forth = Add.new(7, 3)
fifth = Subtract.new(8, 5)
sixth = Multiply.new(3, 9)

[ first, second, third, forth, fifth, sixth ].each{ |answer| p answer }
