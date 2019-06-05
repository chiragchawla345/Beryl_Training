def fact(n)
	fact = 1
	for i in 1..n
		fact = fact * i
	end
	fact
end
puts "Enter a number"
n = gets.chomp
fact = fact(n.to_i)
puts "Factorial of #{n} is : #{fact}"