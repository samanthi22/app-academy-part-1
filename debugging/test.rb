require 'byebug'

def all_unique_chars?(str)
  letters = str.split('').reject{ |char| char == '  '}
  letters.uniq.length == letters.length
end


puts all_unique_chars?("abcd") #=> true
puts all_unique_chars?("abcdd") #=> false
puts all_unique_chars?("aaa") #=> false
puts all_unique_chars?("zxy") #=> true
