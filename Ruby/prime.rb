# Print all prime numbers between 2 and n

def prime(a)
	count = 0
	for i in 2..a/2
		if(a%i == 0)
			count = 1
			break
		end
	end
	if(count == 0)
		return 1
	else
		return 0
	end
end

#Inside main class
puts "Enter an Positive Integer n"
b = gets.chomp
for i in 2..b.to_i
	temp = prime(i.to_i)
	if temp == 1
		puts "#{i} is Prime"
	else
		next
	end
end

