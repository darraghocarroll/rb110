#problem
   #input = string 
   #output = hash
   #rules = has at least one word, which can be any string of characters thats not a space
#examples
#data - string to array to hash
#algo - split string by space into array. itterate and count to create a hash
#code

def word_sizes(str)
  str = str.split(" ")
  str.each_with_object({}) do |word, hash|
    word = word.gsub(/[^(a-z)(A-Z)]/,'')
    if hash.has_key?(word.length)
      hash[word.length] += 1
    else
      hash[word.length] = 1
    end 
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
