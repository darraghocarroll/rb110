Digits = { 
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(integer)
  string = ''
  current_int = nil

  loop do
  integer, current_int = integer.divmod(10)
  string.prepend(Digits[current_int])
  break if integer == 0
  end

  string
end

def determine_sign(integer)
  x = 0 - integer
  if x < 0
    integer_to_string(integer).prepend"+"
  elsif x > 0
    integer_to_string(x).prepend("-")
  else
    "0"
  end
end

p determine_sign(4321) == '+4321'
p determine_sign(-123) == '-123'
p determine_sign(0) == '0'
