#Arithmatic Operators

c, d = 10, 4
# Parallel Assignment 
a, b = c, d
c = a + b
puts "Addition is #{c}"
d = a * b
puts "Multiplication is #{d} #{d.class.name}"
d = a / b
puts "Division is #{d} #{d.class.name}"
d = a % b
puts "Remainder is #{d} #{d.class.name}"
d = a ** b
puts "Exponentiation is #{d} #{d.class.name}"
d = (a == b)
puts "Comparision is #{d} \t #{d.class.name}"
d = (a!=b)
puts "Comparision is #{d} \t #{d.class.name}"
d = a>b
puts "Comparision is #{d} \t #{d.class.name}"
d = a<b
puts "Comparision is #{d} \t #{d.class.name}"
d = a<=>b
puts "Comparision is #{d} \t #{d.class.name}"
d = a.eql?(b)
puts "#{d} #{d.class.name}"