numbers = [ ]


while numbers.size < 5 
  numbers << rand(0..99)
end

puts numbers

numbers = [ 7, 9, 13, 25, 18]

index = 0

until index == numbers.size 
  puts numbers[index]
  index += 1
end

for i in 1..100
  puts i if i.odd?
end 

friends = %w[Sarah John Hananh Dave]

for friend in friends
  puts "Hello, #{friend}"
end

count = 1

loop do
    if count.odd?
      puts "#{count} is odd!"
    else 
      puts "#{count} is even!"
    end 
  count += 1
  break if count > 5  
end

loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end

loop do
  number = rand(100)
  puts number
  break if (0..10).include? number 
end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end


alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char    # appends current_char into the selected_chars string
  end

  counter += 1
  break if counter == alphabet.size
end

p selected_chars # => "g"



