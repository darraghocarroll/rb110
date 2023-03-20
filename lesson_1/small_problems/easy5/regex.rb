str = 'cast '

print "matched 's'" if str.match(/[ ]/)
print "matched 'x'" if str.match(/x/)


text = 'xyx'
puts 'matched' if text.match(/[^x]/)

TEXT3 = "red fish\nblue fish"
TEXT4 = "red fish\nred shirt"
puts "matched red" if TEXT3.match(/\Ared/)
puts "matched blue" if TEXT3.match(/\Ablue/)
puts "matched fish" if TEXT4.match(/fish\Z/)
puts "matched shirt" if TEXT4.match(/shirt\Z/)


puts "this is a test".split(/\B/)


def isUrl(string)
  string = string.shift.pop
  string.match(/^\'https?:\/\/\S\'$/)

end

p isUrl('http://launchschool.com')
p isUrl('https://example.com')      
p isUrl('https://example.com hello')
p isUrl('   https://example.com')
