#p: i- arr x 2 out- arr  rules - no duplicates, and in numberical order
#ex
#data = arrays
#algo, use uniq and sort


def merge(arr1, arr2)
  arr2.each {|element| arr1 << element}
  arr1.sort.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
