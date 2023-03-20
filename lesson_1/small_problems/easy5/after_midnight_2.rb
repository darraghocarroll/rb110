def after_midnight(input)

  hour = input.chars.shift(2).join.to_i
  min = input.chars.pop(2).join.to_i
  
  hour = 0 if hour == 24
  total = hour * 60 + min
end

def before_midnight(input)
  delta_min = after_midnight(input)

  delta_min == 0 ? 0 : 1440-delta_min
end 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
