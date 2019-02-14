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

puts
print oddball([1,2,3]) #=> 2
puts
print oddball([2,4,5,6]) #=> 5
puts
print oddball([4, 6, 8, 9]) #=> 9
puts