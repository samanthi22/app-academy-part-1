require 'byebug'

def echo(phrase)
    return phrase
end

def shout(phrase)
    return phrase.upcase
end

def repeat(phrase, num=2)
    str = (phrase + " ") * num
    return str.chop
end

def start_of_word(phrase, num) 
    return phrase[0...num]
end 

def first_word(s)
    s = s.split(" ")
    return s[0]
end 

def titleize(s) 
    str = []
    #byebug
    s = s.split(" ")
    str << s[0].capitalize
    little = %w[over the and]
    s.each_with_index do |word, i|
        str << word.capitalize! unless little.include?(word) || i == 0
        if (little.include?(word) && i != 0) then  str << word end
    end 
    str = str.join(" ")
    return str
end 
