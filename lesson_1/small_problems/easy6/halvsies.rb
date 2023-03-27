#p: i- arr o- two arrays. If odd, middle element goes to first array
#e
#data = arr
#algo divide by two and use .round to get halfway

def halvsies(arr)
  final = [[],[]]
  halfway_index = ((arr.length - 1) / 2).round

  arr.each_with_index do |num, idx|
    if idx <= halfway_index
      final[0] << num
    else
      final[1] << num
    end
  end
  final
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
