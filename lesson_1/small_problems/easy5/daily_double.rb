#problem 
  #input - String 
  #output - string with all consecutive duplicate characters collapsed into 1
  #rules - cant use squeeze 
#examples
#data structures- string to array to string 
#algo - convert to array, if next index is same, make current index blank
#code

def crunch(string)
  string = string.chars
  new_string = [ ]

  string.each_with_index do |char, index|
    char == string[index + 1] ? char = '' : char
    new_string << char
  end 

  new_string = new_string.join
end

def rcrunch(string)
  string.gsub(/(\w)\1*/, '\1')
end


p rcrunch('ddaaiillyy ddoouubbllee')# == 'daily double'
p rcrunch('4444abcabccba')# == '4abcabcba'
p rcrunch('ggggggggggggggg')# == 'g'
p rcrunch('a')# == 'a'
p rcrunch('')# == ''



