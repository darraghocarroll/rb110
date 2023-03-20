def digit_list(int)
  int = int.to_s.chars
  int.each_with_object([]) do |number,arr|
    arr << number.to_i
  end 
end 
 

p digit_list(12345)# == [1, 2, 3, 4, 5]     # => true
p digit_list(7)# == [7]                     # => true
p digit_list(375290)# == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444)# == [4, 4, 4]             # => true


