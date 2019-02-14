require 'byebug'

# EASY

# Define a method that returns the sum of all the elements in its argument (an
# array of numbers).
def array_sum(arr)
    if arr.length == 0 
        return 0
    else
    return arr.reduce(:+)
end
end

# Define a method that returns a boolean indicating whether substring is a
# substring of each string in the long_strings array.
# Hint: you may want a sub_tring? helper method
def in_all_strings?(long_strings, substring)
    long_strings.each do |substr|
       substr = substr.split(" ")
       if !substr.any?(substring)
           return false
       end
    end
    return true
end

# Define a method that accepts a string of lower case words (no punctuation) and
# returns an array of letters that occur more than once, sorted alphabetically.
def non_unique_letters(string)
      arr = []
    hash = Hash.new(0)
    string.each_char do |ch|
       hash[ch] += 1 
    end
    hash.each do |key, value|
       if key != " "
        if value >= 2
           arr << key
        end
       end
    end
    
    return arr
end

# Define a method that returns an array of the longest two words (in order) in
# the method's argument. Ignore punctuation!
def longest_two_words(string)
    arr = []
    str = string.split(" ")
    str.sort_by!(&:length)
    arr << str[-1]
    arr << str[-2]
    return arr
end

# MEDIUM

# Define a method that takes a string of lower-case letters and returns an array
# of all the letters that do not occur in the method's argument.
def missing_letters(string)
     arr = []
    alpha = "abcdefghijklmnopqrstuvwxyz"
    alpha.each_char do |ch|
       if !string.include?(ch) 
           arr << ch
       end
    end
    return arr
end

# Define a method that accepts two years and returns an array of the years
# within that range (inclusive) that have no repeated digits. Hint: helper
# method?
def no_repeat_years(first_yr, last_yr)
     arr = []
    (first_yr..last_yr).each do |year|
       if not_repeat_year?(year) 
           arr << year
       end
    end
    return arr
end

def not_repeat_year?(year)
     hash = Hash.new(0)
    year = year.to_s
    year = year.split("")
    year.each do |num|
        hash[num] += 1
    end
    hash.each do |key, value|
       if value >=2
           return false
       end
    end
    return true
    
end

# HARD

# Define a method that, given an array of songs at the top of the charts,
# returns the songs that only stayed on the chart for a week at a time. Each
# element corresponds to a song at the top of the charts for one particular
# week. Songs CAN reappear on the chart, but if they don't appear in consecutive
# weeks, they're "one-week wonders." Suggested strategy: find the songs that
# appear multiple times in a row and remove them. You may wish to write a helper
# method no_repeats?
def one_week_wonders(songs)
    songs.each_with_index do |song, i|
       if song == songs[i+1]
           songs.delete(song)
       end
    end
    songs
    return songs.uniq
end

def no_repeats?(song_name, songs)
end

# Define a method that, given a string of words, returns the word that has the
# letter "c" closest to the end of it. If there's a tie, return the earlier
# word. Ignore punctuation. If there's no "c", return an empty string. You may
# wish to write the helper methods c_distance and remove_punctuation.

def for_cs_sake(string)
     hash = {}
    string = string.split(" ")
    string = string.map {|word| word.chars.select {|ch| ch =~ /[a-z]/i}.join""}
    string.each do |word|
       hash[word] = c_distance(word) 
    end
    
    hash1 = hash.sort_by {|key, value| value }
    hash1.each do |key, value|
       if value != -1
          return key 
       end
    end
    return ""
end

def c_distance(word)
    word.each_char.with_index do |ch, i|
       if ch == 'c'
          return word.length - i 
       end
    end
    return -1
end

# Define a method that, given an array of numbers, returns a nested array of
# two-element arrays that each contain the start and end indices of whenever a
# number appears multiple times in a row. repeated_number_ranges([1, 1, 2]) =>
# [[0, 1]] repeated_number_ranges([1, 2, 3, 3, 4, 4, 4]) => [[2, 3], [4, 6]]

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