['ant', 'bat', 'caterpillar'].reject do |str|
  puts str 
end

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

[1, 2, 3].reject do |num|
  puts num
end

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
    hash[value[0]] = value
end

hash = { a: 'ant', b: 'bear' }
hash.shift

['ant', 'bear', 'caterpillar'].pop.size

any? do |num|
    puts num
    num.odd?
end

arr = [1, 2, 3, 4, 5]
arr.take(2)

{ a: 'ant', b: 'bear' }.map do |key, value|
    if value.size > 3
    value
  end
end # => [nil, "bear"]

[1, 2, 3].map do |num|
    if num > 1
    puts num
    else
    num
  end
end # => [1, nil, nil]
