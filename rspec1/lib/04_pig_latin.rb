require 'byebug'

def translate(s)
    str = []
    #byebug
    s = s.split(" ")
    s.each do |word|
        str << pig_latin_one_word(word)
    end
    return str.join(" ")
end


def pig_latin_one_word(s)
    vowels = "aeiou"
    s = s.chars
    if vowels.include?(s[0])
        return s.join + "ay"
    else # does not start with vowel
        idx = first_vowel(s.join)
        part1 = s[0...idx]
        part2 = s[idx..-1]
        return part2.join + part1.join + "ay"
    end 
end


def first_vowel(s)
   first = ""
   s = s.chars
   vowels = "aeiou"
   s.each.with_index do |ch, i|
       #byebug
      if vowels.include?(ch) 
          if ch == 'u' && s[i-1] == 'q'
              return i + 1
          else
          return i
          end
          break
      end
   end
end

# puts first_vowel("banana") #=> 1
# puts first_vowel("pie") # => 1
# puts first_vowel("quiet") # => 2 not 1
# puts first_vowel("square") # => 3 not 2

# puts translate("eat pie") #=> "eatay iepay"


# puts pig_latin_one_word("eat")
# puts pig_latin_one_word("quares") #=> "aresquay"
# puts pig_latin_one_word("pie")