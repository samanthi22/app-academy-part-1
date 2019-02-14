def my_rotate(arr, offset=1)
  # your code goes here
  return arr.drop(offset%arr.length) + arr.take(offset%arr.length)
end

puts 
print my_rotate([1,2,3], offset=11)
puts
print [1,2,3].rotate(11)