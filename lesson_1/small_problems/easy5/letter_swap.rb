#problem
   #input = string 
   # output = same string but first and last letter of each word are swapped
   # rules = keep same case 
#example:
#data: string convert to array and then back to string
#algo: 1)split into array 2)swap letters 3)join array back together  
#

def swap(string)
  string = string.split(' ') 

  string.map! do |word|
    last_index = word.length - 1
    if last_index == 0
     word 
    else 
      new_word = ''
      new_word << word[last_index]
      new_word << word[1..(last_index - 1)]
      new_word << word[0]
      new_word
    end
  end

  string.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
