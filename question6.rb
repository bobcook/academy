contents_array = []
contents_array = IO.readlines("data.txt")
puts contents_array
results = contents_array.collect do |expression|
  begin
    operator, a, b = expression.split(';')
    a = a.to_i ## convert a to an integer
    b = b.to_i ## convert b to an integer
    case operator
    when '+' then a + b
    when '-' then a - b
    when '*' then a * b
    when '/' then a / b
    else nil # operator not understood
    end
  rescue ZeroDivisionError # catch div by zero
    nil # define what to return for divide by zero results
  end
end

puts results.inspect
