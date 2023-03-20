#problem
  #input string
  #ouput cleaned up string
  #explicit rules - a)all non alphas replaced by spaced b)never have consecutive spaces
#examples
#data - without regex, string to array , bach to string 
#algo - .chars to split into array, create array of all alphas, delete if not included in 
# alpha array. make only one space per deletion


def cleanup(str)
  str = str.chars
  new_str = [ ]

  str.map! do |char| # replace all non alpha characters with a * 
    char =~ /[^(a-z)(A-Z)]/ ? char = ' ' : char
  end 
  
  str.each_with_index do |char, index| # if current and next index is a ' ', remove current index
    if char == ' ' && str[index + 1] == ' '
      new_str << ''
    else
      new_str << char
    end
  end
  
  new_str.join
end


p cleanup("---what's my +*& line?")  == ' what s my line '




