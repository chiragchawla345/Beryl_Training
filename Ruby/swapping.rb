def swap(a, b)
	temp = a
	a = b
	b = temp
	return a, b
end
puts "Enter First Number"
a = gets.chomp
puts "Enter Second Number"
b = gets.chomp
puts "Numbers before swap a: #{a} b: #{b}"
arr = swap(a, b)
a = arr[0]
b = arr[1]
puts "Numbers After swap a: #{a} b: #{b}" 