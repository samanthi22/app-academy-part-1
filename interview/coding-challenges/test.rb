require 'byebug'

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
