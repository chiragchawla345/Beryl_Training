# Demonstration of if modifier
# Demonstration of unless modifier
a = 5
b = 10
a = b if(a < b)
puts "Equals" if (a == b)

a = 10
b = 10
puts "#{a} is Less than #{b}" unless (a >= b)
puts "#{a} is Greater than #{b}" unless (a<=b)
puts "#{a} is equals to #{b}" unless !(a==b)