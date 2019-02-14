require 'byebug'

def add(num1, num2)
   return num1 + num2 
end

def subtract(num1, num2)
    return num1 - num2
end

def sum(arr)
   sum = 0
   arr.each do |num|
      sum += num 
   end
   return sum
end

def multiply(*nums)
    return nums.reduce(:*)
end 


def power(num1, num2)
    return num1**num2
end 

def factorial(num) 
   fact1 = 1
   if num == 0 || num == 1
       return 1
   else
       (1..num).each do |fact|
           fact1 *= fact
       end
   end
   return fact1
end
