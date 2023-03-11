#problem 
  #input = integer
  #output = integer 
#examples test cases
#data structure
  #use array to store multiples
  #use inject :+ to add all together
#algorithm
  #take integer, use % to find multiples of 3 and 5 
  # add multiples to array
  # use inject to add all togther
#code 

def multisum(num)
  multiple_array = [ ]

  (1..num).each do |n|
    multiple_array << n if n % 3 == 0 || n % 5 == 0
  end
  
  multiple_array.inject(:+)
end



p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
