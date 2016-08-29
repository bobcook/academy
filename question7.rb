class Oneoverx
  def initialize(denominator)
    @denominator = denominator
  end
  def answer
    Rational(denominator.to_i)
  end
end

print "denominator? "
denominator = gets
puts Rational(1, denominator.to_i)
