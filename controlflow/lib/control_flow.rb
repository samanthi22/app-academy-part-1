# EASY
require 'byebug'

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
 str = str.chars
    new_str = ""
    str.each do |ch|
       if ch == ch.downcase
           ch = ""
       else
           new_str += ch
       end
    end
    return new_str
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
     str = str.chars
    new_str = ""
    if str.length % 2 == 0 # even
        new_str = str[str.length/2 - 1] + str[str.length/2] 
    else
        new_str = str[str.length/2]
    end
    return new_str
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
   str = str.chars
    count = 0
    str.each do |ch|
       ch = ch.downcase
       if VOWELS.include?(ch)
           count += 1
       end
    end
    return count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
   fact = 1
    (1..num).each do |num1|
       fact *= num1
    end
    return fact
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
    str = ""
    arr.each do |ele|
        if ele != arr[arr.length-1]
            str += ele + separator
        else 
            str += ele
        end
    end
    return str
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  str = str.chars
    str.each_with_index do |letter, i|
       if i % 2 == 0
           letter = letter.downcase!
       else
           letter = letter.upcase!
       end
    end
    return str.join("")

end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
    words = str.split(" ")
    words.each do |word|
       if word.length >= 5
           word = word.reverse!
       end
    end
    return words.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
 arr = []
    (1..n).each do |num|
        if num % 3 == 0 && num % 5 == 0
            arr << "fizzbuzz"
        elsif num % 3 == 0 
            arr << "fizz"
        elsif num % 5 == 0 
            arr << "buzz"
        else
            arr << num
        end
    end
    return arr
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
    return arr.reverse
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
    debugger
    if (num == 1) 
        return false
    end
    (2..num-1).each do |divisor|
      if (num % divisor == 0)
        return false
      end
   end
   return true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
 arr = []
    (1..num).each do |divisor|
       if  num % divisor == 0
           arr << divisor
       end
    end
    return arr.sort!
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
    arr = []
    factors = factors(num)
    factors.each do |num|
        if prime?(num)
            arr << num
        end
    end
    return arr
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
    return prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
    if odd?(arr)
       arr.each do |ele|
           if ele % 2 == 0
               return ele
           end
       end
    else
        arr.each do |ele|
            if ele % 2 == 1
                return ele
            end
        end
    end
end

def odd?(arr)
   even = 0
   odd = 0
   arr.each do |ele|
      if ele % 2 == 1
          odd += 1
      else
          even += 1
      end
   end
   if odd > even
       return true
   else
       return false
   end
end
