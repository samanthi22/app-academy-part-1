require 'byebug'

def translate(s)
    str = []
    temp = []
    #byebug
    s = s.split(" ")
    s.each do |word|
        # strip of punctuation
        word1 = remove_punct(word)
        str << pig_latin_one_word(word1) + save_punct(word)
        #str << save_punct(word)
    end
    return str.join(" ")
end


def pig_latin_one_word(s)
    vowels = "aeiouyAEIOUY" # added y as a vowel
    s = s.chars
    if vowels.include?(s[0])
            return s.join + "way"
    else # does not start with vowel
        idx = first_vowel(s.join)
        part1 = s[0...idx]
        part2 = s[idx..-1]
        first_char = s[0]
        if first_char == first_char.upcase
            return part2[0].upcase + part2[1..-1].join + part1.join.downcase + "ay"
        else 
            return part2[0..-1].join + part1.join.downcase + "ay"
        end
    end 
end


def first_vowel(s)
   first = ""
   s = s.chars
   vowels = "aeiouAEIOU"
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

def remove_punct(word)
    no_punct = []
    array = "!?.,()&"
    word = word.split("")
    word.each do |letter|
        if array.include?(letter)
            
        else
            no_punct << letter
        end
    end
    return no_punct.join("")
end 

def save_punct(word)
   punct = []
   array = "!?.,()&"
   word = word.split("") 
   word.each do |letter|
       if array.include?(letter)
           punct << letter
       end 
   end
   punctuation = punct.join("")
   return punctuation
end

puts remove_punct("eat...") #=> eat
puts remove_punct("great!") #=> great
puts save_punct("eat...") #=> ...
puts save_punct("great!") #=> !
# puts first_vowel("banana") #=> 1
# puts first_vowel("pie") # => 1
# puts first_vowel("quiet") # => 2 not 1
# puts first_vowel("square") # => 3 not 2

# puts translate("eat pie") #=> "eatay iepay"


# puts pig_latin_one_word("eat")
# puts pig_latin_one_word("quares") #=> "aresquay"
# puts pig_latin_one_word("pie")
puts translate("hello") #=> ellohay
puts translate("eat") #=> eatway
puts translate("yellow") #=> yellowway
puts translate("eat world") #=> eatway orldway
puts translate("Hello") #=> Ellohay
puts translate("Apples") #=> Applesway
puts translate("eat... world?!") #=> eatway... orldway?!
puts translate("school") #=> ollschay
puts translate("quick") #=> ickquay
puts translate("she's great!") #=> e'sshay eatgray!
 