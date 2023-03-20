#problem
  #input: integer representing number of minutes
  #output: string '00:00' 24hr clock
  #implict
  #explicit: if positive its number of minutes after mdn, if negative is befire
#examples/test cases
#data structyres: variabes and ints 
#algo
  #How many minutes in a day
  #convert integer into numeber of minutes by % by minutes in a day
  #convert integer into hours and minutes by divmod(60)
#code


def time_of_day(input)
  sign = input <=> 0
  input = input.abs % 1440 
  
  hours = 0
  min = 0

  if sign >= 1
    hours, min = input.divmod(60)
  elsif sign == 0
    hours = "00"
    min = "00"
  else
    hours, min = input.divmod(60)
    hours = 24 - (hours+1)
    min = 60 - min
  end
  
  format('%02d:%02d', hours, min)
 

end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
