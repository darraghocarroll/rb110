#problem
   # input= string 
   # output = integer
   # rules = cant use .to_i or integer()
# examples/test cases
# data structure = convert to array and then .join?
# algo- iterate and convert to 
# code 
#

Digits = {
  '0' => 0, '1' => 1, '2' => 2, '3'=> 3, '4' => 4, 
  '5' => 5,'6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string)
  string = string.chars
  string = string.each_with_object([]) do |char, array|
             array << Digits[char]
           end
  number = 0
  string.each do |char|
    number = 10 * number + char
  end 
  
  number
end

p string_to_integer('4321') 
p string_to_integer('570') 
