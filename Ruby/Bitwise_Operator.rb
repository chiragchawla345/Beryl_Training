# Demonstration of all Bitwise operators
# Also Logical Operators
a = 255
b = 13
c = a & b
puts "#{c}  #{c.class.name}"

# "~a", it will take 1's complement of a
c = ~a
puts "#{c}  #{c.class.name}"
d = 256
c = ~d
puts "#{c}"

# "<<", this is left shift operator
c = 256
# left shift by 3 bits by appending 3 0's
d = c << 3
puts "#{d}"

# ">>", is right shift opeartor
# right shift 'c' by 3 bits 
# And append 3 0's to the left
c >> 3
puts "#{c}"

# Logical AND i.e 'and' or '&&'
c = true
d = true
e = c && d
puts "#{e}"

c = true
d = true
e = c and d
puts "#{e}"

c = 20
d = nil
# if we perform '&&' between two integers
# it assumes true if some value exists of operand
# it will give nil if atleast one of them is nil
# Otherwise it will return the second operand
puts "ANDing of #{c} and #{d} is : #{c && d}"
if (c && d)
	puts "if block #{ c && d }"
end

e = (c==d) ? "true " : "false"
puts "#{e} #{e.class.name}"

c = false
d = false
e = c || d
puts "ORing of #{c} and #{d} is #{e}"

# if we perform '||' between two integers
# it will give nil if both of them are nil
# Otherwise it will return the first operand
c = nil
d = nil
e = c || d
puts "ORing of #{c} and #{d} is #{e}"

# Logical NOT i.e 'not' or '!'
c = false
puts "After applying Logical NOT to #{c} it becomes #{!c}"
c = true
puts "After applying Logical NOT to #{c} it becomes #{!c}"
c = 0
puts "After applying Logical NOT to #{c} is #{!c}"
c = nil
# It assumes nil as false 
# And true if some value exist either +ve or -ve or 0 
puts "After applying Logical NOT to #{c} is #{!c}"