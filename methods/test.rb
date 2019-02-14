def dec_remainder_of_two_floats(f_dividend, f_divisor)
   num = f_dividend / f_divisor 
   num2 = num.to_i
   return num - num2
end

puts dec_remainder_of_two_floats(8.0, 5.0) # => 0.6, 1.6 