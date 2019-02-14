require 'byebug'

class Array
  
  
  def bubble_sort!
    temp = self.dup
    result = []
    result.push(temp.bubbling) until temp.empty?
  end
  
  def bubbling
    (length-1).times do |i|
      self[i], self[i+1] = self[i+1], self[i] if self[i] < self[i+1]
    end
  end
  
  
  def bubble_sort(&prc)
    return prc.call
  end
end

puts [1, 3, 5].bubble_sort!#=> sorts ascending
puts [9, 6, 8,7,9].bubble_sort! #=> [5,6,7,8,9]
puts [3].bubble_sort! #=> [3]