#!/usr/bin/env ruby
#
# Recursive evaluation of prefix notation expression

array =  ["+;1;2\n", "-;3;4\n", "*;5;6\n", "+;*;2;3;4.5\n"]

# piggybacking on array since it provides some of the basic functionality we need

class Array
  def pre # for when we have an array of operators and operands in prefix order
    case oper = shift
    when nil then 0 ## if we happen to fall off the end of the list
    when '+' then pre + pre ## recursive calls for operators
    when '-' then pre - pre
    when '*' then pre * pre
    when '/' then pre / pre
    when /^[+-]?\d+$/ then oper.to_i ## looks like an integer
    when /^[+-]?\d*\.\d+$/ then oper.to_f ## looks like a float
    else
      raise ArgumentError, "Unknown element #{operator}"
    end
  end
end

results = array.collect { |exp| exp.split(';').pre }


puts results.inspect
# [3, -1, 30, 10.5]
# +;*;2;3;4.5 => (2 * 3) + 4.5 => 6 + 4.5 => 10.5

