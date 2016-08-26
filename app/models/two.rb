class Two < ApplicationRecord
end

class Add
  @@array = Array.new
  def initialize(x, y)
    @x = x
    @y = y
  end

  def answer
    @x + @y
  end
end

class Subtract
  @@array = Array.new
  def initialize(x, y)
    @x = x
    @y = y
  end

  def answer
    @x - @y
  end
end

class Multiply
  @@array = Array.new
  def initialize(x, y)
    @x = x
    @y = y
  end

  def answer
    @x * @y
  end
end

private

def add_params
  params.require(:two).permit(:x, :y)
end

def subtract_params
  params.require(:two).permit(:x, :y)
end

def multiply_params
  params.require(:two).permit(:x, :y)
end
