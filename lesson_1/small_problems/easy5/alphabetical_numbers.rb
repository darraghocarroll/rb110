Order = [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

def alphabetic_number_sort(arr)
  sorted_arr = []

  Order.each do |ordered_num|
    arr.each do |unordered_num|
      unordered_num == ordered_num ? sorted_arr << unordered_num : false
    end
  end 
  sorted_arr
end

p alphabetic_number_sort((0..19).to_a)# == [
 # 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  #6, 16, 10, 13, 3, 12, 2, 0
#]
