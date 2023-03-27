#problem
#input= arr of strings
#output = arr of strings minus vowels
#rules = remove vowels 
#data = array and string 
#algo = iteratie through array, gsub /aeiou/i with ''




def remove_vowels(arr)
  arr.map  {|word| word.gsub(/[aeiou]/i , '')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
