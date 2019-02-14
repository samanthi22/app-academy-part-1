# Write a function that acts like "index", in that it
# returns the position of a given string within a
# larger string, and returns -1 if the given string
# is not found.

# Two strings are given as arguments. The first
# argument is the smaller string, and the second argument
# is the larger string.

# DO NOT use any stdlib string search functions like
# index, find, etc.

# Examples:

#  str_index_of("Francisco", "San Francisco")
#  => 4
#  str_index_of("abba", "bbbabbaaa")
#  => 3
#  str_index_of("Jose", "San Francisco")
#  => -1

# @param {String} needle
# @param {String} haystack
# @return integer

require 'byebug'
# (3:00-3:30) - question 1 - 30 mins

def str_index_of(str1, str2)
    if str_include(str1, str2)
        get_index(str1, str2)
    else
        return -1
    end
end

def str_include(str1, str2)
    return str2.include?(str1)
end

def get_index(str1, str2)
   first_char = str1[0] 
   str2.chars.each_with_index do |ch, i|
       if first_char == ch
           return i
       end       
   end
   return -1
end

puts str_index_of("Francisco", "San Francisco") #  => 4
puts str_index_of("abba", "bbbabbaaa") #  => 3
puts str_index_of("Jose", "San Francisco") #  => -1
puts 

puts str_include("Francisco", "San Francisco") #  => true
puts str_include("abba", "bbbabbaaa") #  => true
puts str_include("Jose", "San Francisco") #  => false

puts get_index("Francisco", "San Francisco") #  => 4
puts get_index("abba", "bbbabbaaa") #  => 3
puts get_index("Jose", "San Francisco") #  => -1


# Write a function that capitalizes all of the words in
# a sentence.

# DO NOT use the stdlib capitalize method

# Examples:

#  capitalize("Hello world")
#  => "Hello World"

#  capitalize("1st thing")
#  => "1st Thing"

#  capitalize("javaScript language")
#  => "JavaScript Language"

# @param  {String} sentence
# @return {String}

def capitalize(sentence)
    words = []
   sentence = sentence.split(" ")
   sentence.each do |word|
      words << word[0].upcase + word[1..-1].downcase
   end
   sentence = words.join(" ")
   return sentence
end

puts capitalize("Hello world") #  => "Hello World"

puts capitalize("1st thing") #  => "1st Thing"

puts capitalize("javaScript language") #  => "JavaScript Language"


# Write a function that takes in a sentence as an argument.
# The sentence always contains one comma, which divides
# the sentence into two strings.
# DO NOT use a the stdlib end_with? method

# The function should return true if the first part of the string
# (the part before the comma) ends with second part of
# the string (the part after the comma).

# Examples:

#  ends_with("San Francisco,Francisco");
#  => true
#  ends_with("racecar,race");
#  => false
#  ends_with("honey,money");
#  => false
#  ends_with("escargo,go");
#  => true
#  ends_with("Palo Alto,Palo");
#  => false
#  ends_with("Raise.me,me");
#  => true

# @param  {String} sentence
# @return {Bool} true or false

def ends_with(sentence)
    parts = sentence.split(",")
    part1 = parts[0]
    part2 = parts[1]
    part1_reverse = part1.reverse
    part2_reverse = part2.reverse
    return check_if_ends(part1_reverse, part2_reverse)
end

def check_if_ends(sentence, substr)
    #byebug
    sentence = sentence.chars
    substr.chars.each.with_index do |ch, i|
        if ch != sentence[i]
            return false
        end
    end 
    return true
end

puts ends_with("San Francisco,Francisco") #  => true
puts ends_with("racecar,race") #  => false
puts ends_with("honey,money") #  => false
puts ends_with("escargo,go") #  => true
puts ends_with("Palo Alto,Palo") #  => false
puts ends_with("Raise.me,me") #  => true
puts
puts check_if_ends("San Francisco", "Francisco") # => false
puts check_if_ends("ociscnarF naS", "ociscnarF") # => true

# Tests
puts str_index_of("Francisco", "San Francisco")
puts capitalize("python is named after monty python, not the snake.")
puts ends_with("San Francisco, Francisco")
puts ends_with("San Francisco, Francesco")