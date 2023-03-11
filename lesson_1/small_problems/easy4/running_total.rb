#problem
  #input- array
  #output -array
  #implicit/explicit rules - running total is sum up to that point
#examples/test cases
#data structure
#algo - iterate through array and add first element to new array
#     - second element will be first plus second
#code

def running_total(input_arr)
  new_arr = [ ]

  input_arr.inject(0) do |sum, num|
    sum += num  
    new_arr << sum
    sum
  end
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
