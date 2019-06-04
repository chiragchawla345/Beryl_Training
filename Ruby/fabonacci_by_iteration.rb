# Print N Fabonacci Numbers
def fabonacci(x)
	if(x==1) 
		puts "0"
	elsif(x==2) 
		puts "0 1"
	else
		i = 0
		j = 1
		print "0 1 "
		for k in 3..x
			temp = i + j
			i = j
			j = temp
			print "#{temp} "
		end
	end
end
puts "How many Fabonacci numbers you want to print"
n = gets.chomp
fabonacci(n.to_i) 
