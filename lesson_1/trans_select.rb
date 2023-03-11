def select_fruit(collection)
  collection.select{|k,v| v == "Fruit"} 
end 

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


def double_numbers(numbers)
  counter = 0

  loop do
    numbers[counter] *= 2 if counter.odd?
    counter += 1
    break if counter == numbers.size
  end

  numbers
end 

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

def multiply_numbers(numbers, factor)
  counter = 0

  loop do
    numbers[counter] *= factor
    counter += 1
    break if counter == numbers.size
  end

  numbers
end 

my_numbers = [1, 4, 3, 7, 2, 6]
multiply_numbers(my_numbers, 5) 

p my_numbers

def select_letter(string, letter)
  counter = 0
  new_string = ''
  
  loop do
    new_string << string[counter] if string[counter] == letter
    counter += 1
    break if counter == string.size
  end

  new_string
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""

p my_numbers.map {|x| x * 35}

p my_numbers
