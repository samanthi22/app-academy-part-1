require 'byebug'

def repeated_number_ranges(arr)
   return array(arr)
end

def array(arr)
   new_arr = []
   array = first_index(arr)
   array.each_with_index do |num, i|
       numbers = []
       numbers << num 
       numbers << last_index(arr)[i]
       new_arr << numbers
   end
   return new_arr
end

def first_index(arr)
   new_arr = []
   arr.each_with_index do |num, i|
       if num == arr[i+1] && arr[i-1] != arr[i]
           new_arr << i
       end
    end 
    return new_arr
end

def last_index(arr)
   new_arr = []
   arr.each_with_index do |num, i|
       if num != arr[i+1] && arr[i-1] == arr[i]
           new_arr << i
       end
    end 
    return new_arr
end



print repeated_number_ranges([1, 1, 2]) #=> [[0, 1]] 
puts
print array([1, 1, 2]) #=> [[0, 1]] 
puts
print array([1, 2, 3, 3, 4, 4, 4]) #=> [[2,3],[4,6]] 
puts
print first_index([1,1,2]) #=> [0]
puts

print last_index([1,1,2]) #=> [1]
puts
print first_index([1,2,3,3,4,4,4]) # [2,4]
puts
print last_index([1, 2, 3, 3, 4, 4, 4]) #=> [3,6]
puts
print last_index([1, 2, 3, 3, 4, 4, 4]) #=> [3,6] 
puts
print repeated_number_ranges([1, 2, 3, 3, 4, 4, 4]) #=> [[2, 3], [4, 6]]
puts